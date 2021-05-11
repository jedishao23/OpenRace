#include "Analysis/OpenMPAnalysis.h"

#include "IR/IRImpls.h"
#include "LanguageModel/OpenMP.h"
#include "Trace/Event.h"
#include "Trace/ThreadTrace.h"

using namespace race;
using namespace llvm;

#define KMPC_STATIC_INIT_PREFIX "__kmpc_for_static_init"
#define KMPC_DISPATCH_INIT_PREFIX "__kmpc_dispatch_init"

namespace {

const llvm::GetElementPtrInst *getArrayAccess(const MemAccessEvent *event) {
  return llvm::dyn_cast<llvm::GetElementPtrInst>(event->getIRInst()->getAccessedValue()->stripPointerCasts());
}

// move add operation out the (sext ) SCEV
class BitExtSCEVRewriter : public llvm::SCEVRewriteVisitor<BitExtSCEVRewriter> {
 private:
  const SCEV *rewriteCastExpr(const SCEVCastExpr *Expr);

 public:
  using super = SCEVRewriteVisitor<BitExtSCEVRewriter>;
  explicit BitExtSCEVRewriter(llvm::ScalarEvolution &SE) : super(SE) {}

  const SCEV *visit(const SCEV *S);

  inline const SCEV *visitZeroExtendExpr(const SCEVZeroExtendExpr *Expr) { return rewriteCastExpr(Expr); };

  inline const SCEV *visitSignExtendExpr(const SCEVSignExtendExpr *Expr) { return rewriteCastExpr(Expr); }
};

class SCEVBoundApplier : public llvm::SCEVRewriteVisitor<SCEVBoundApplier> {
 private:
  using super = SCEVRewriteVisitor<SCEVBoundApplier>;
  const llvm::Loop *ompLoop;

 public:
  SCEVBoundApplier(const llvm::Loop *ompLoop, llvm::ScalarEvolution &SE) : ompLoop(ompLoop), super(SE) {}

  const llvm::SCEV *visitAddRecExpr(const llvm::SCEVAddRecExpr *Expr);
};

class OpenMPLoopManager {
 private:
  Function *F;

  // dependent pass from LLVM
  // LoopInfo *LI;
  DominatorTree *DT;

  // cached result. TODO: use const pointer
  SmallDenseMap<BasicBlock *, CallBase *, 4> ompStaticInitBlocks;
  SmallDenseMap<BasicBlock *, CallBase *, 4> ompDispatchInitBlocks;

  void init();

  Optional<int64_t> resolveBoundValue(const AllocaInst *V, const CallBase *initCall) const;

 public:
  // constructor
  OpenMPLoopManager(AnalysisManager<Function> &FAM, Function &fun)
      : F(&fun),
        // LI(&FAM.getResult<LoopAnalysis>(fun)),
        DT(&FAM.getResult<DominatorTreeAnalysis>(fun)) {
    init();
  }

  void rebuildWith(AnalysisManager<Function> &FAM, Function &F);
  // getter
  [[nodiscard]] inline Function *getTargetFunction() const { return F; }

  // query.
  // TODO: handle dynamic dispatch calls.
  inline CallBase *getStaticInitCallIfExist(const BasicBlock *block) const {
    auto it = ompStaticInitBlocks.find(block);
    return it == ompStaticInitBlocks.end() ? nullptr : it->second;
  }

  inline CallBase *getStaticInitCallIfExist(const Loop *L) const {
    if (L->getLoopPreheader() == nullptr) {
      return nullptr;
    }

    auto initBlock = L->getLoopPreheader()->getUniquePredecessor();
    return getStaticInitCallIfExist(initBlock);
  }

  std::pair<Optional<int64_t>, Optional<int64_t>> resolveOMPLoopBound(const CallBase *initForCall) const;
};

}  // namespace

static CallBase *getOMPStaticInitCall(const Loop *L, const OpenMPLoopManager &ompManger) {
  if (L->getLoopPreheader() != nullptr && L->getLoopPreheader()->getUniquePredecessor() != nullptr) {
    // find the corresponding static init call
    return ompManger.getStaticInitCallIfExist(L->getLoopPreheader()->getUniquePredecessor());
  }
  return nullptr;
}

// TODO: handle dynamic dispatch for loop
static inline bool isOMPForLoop(const Loop *L, const OpenMPLoopManager &ompManager) {
  return getOMPStaticInitCall(L, ompManager) != nullptr;
}

template <typename PredTy>
static const SCEV *FindSCEVExpr(const llvm::SCEV *Root, PredTy Pred) {
  struct FindClosure {
    const SCEV *Found = nullptr;
    PredTy Pred;

    FindClosure(PredTy Pred) : Pred(Pred) {}

    bool follow(const llvm::SCEV *S) {
      if (!Pred(S)) return true;

      Found = S;
      return false;
    }

    bool isDone() const { return Found != nullptr; }
  };

  FindClosure FC(Pred);
  visitAll(Root, FC);
  return FC.Found;
}

static inline const SCEV *stripSCEVBaseAddr(const SCEV *root) {
  return FindSCEVExpr(root, [](const llvm::SCEV *S) -> bool { return isa<llvm::SCEVAddRecExpr>(S); });
}

static const SCEVAddRecExpr *getOMPLoopSCEV(const llvm::SCEV *root, const OpenMPLoopManager &ompManager) {
  // get the outter-most loop (omp loop should always be the outter-most
  // loop
  auto omp = FindSCEVExpr(root, [&](const llvm::SCEV *S) -> bool {
    if (auto addRec = llvm::dyn_cast<llvm::SCEVAddRecExpr>(S)) {
      if (isOMPForLoop(addRec->getLoop(), ompManager)) {
        return true;
      }
    }
    return false;
  });

  return llvm::dyn_cast_or_null<llvm::SCEVAddRecExpr>(omp);
}

static const SCEV *getNextIterSCEV(const SCEVAddRecExpr *root, ScalarEvolution &SE) {
  auto step = root->getOperand(1);
  return SE.getAddRecExpr(SE.getAddExpr(root->getOperand(0), step), step,
                          root->getLoop(), root->getNoWrapFlags());
}

const SCEV *BitExtSCEVRewriter::visit(const SCEV *S) {
  auto result = super::visit(S);
  // recursively into the sub expression
  while (result != S) {
    S = result;
    result = super::visit(S);
  }
  return result;
}

const SCEV *BitExtSCEVRewriter::rewriteCastExpr(const SCEVCastExpr *Expr) {
  auto buildCastExpr = [&](const SCEV *op, Type *type) -> const SCEV * {
    switch (Expr->getSCEVType()) {
      case scSignExtend:
        return SE.getSignExtendExpr(op, type);
      case scZeroExtend:
        return SE.getZeroExtendExpr(op, type);
      default:
        llvm_unreachable("unhandled type of scev cast expression");
    }
  };

  const llvm::SCEV *Operand = super::visit(Expr->getOperand());
  if (auto add = llvm::dyn_cast<llvm::SCEVNAryExpr>(Operand)) {
    llvm::SmallVector<const llvm::SCEV *, 2> Operands;
    for (auto op : add->operands()) {
      Operands.push_back(buildCastExpr(op, Expr->getType()));
    }
    switch (add->getSCEVType()) {
      case llvm::scMulExpr:
        return SE.getMulExpr(Operands);
      case llvm::scAddExpr:
        return SE.getAddExpr(Operands);
      case llvm::scAddRecExpr:
        auto addRec = llvm::dyn_cast<llvm::SCEVAddRecExpr>(add);
        return SE.getAddRecExpr(Operands, addRec->getLoop(), addRec->getNoWrapFlags());
    }
  }
  return Operand == Expr->getOperand() ? Expr : buildCastExpr(Operand, Expr->getType());
}

const llvm::SCEV * SCEVBoundApplier::visitAddRecExpr(const llvm::SCEVAddRecExpr *Expr) {
  // stop at the OpenMP Loop
  if (Expr->getLoop() == ompLoop) {
    return Expr;
  }

  if (Expr->isAffine()) {
    auto op = visit(Expr->getOperand(0));
    auto step = Expr->getOperand(1);

    auto backEdgeCount = SE.getBackedgeTakenCount(Expr->getLoop());
    if (isa<SCEVConstant>(backEdgeCount)) {
      auto bounded = SE.getAddExpr(op, SE.getMulExpr(backEdgeCount, step));
      return bounded;
    }
  }
  return Expr;
}

void OpenMPLoopManager::rebuildWith(AnalysisManager<Function> &FAM, Function &fun) {
  this->F = &fun;
  // this->LI = &FAM.getResult<LoopAnalysis>(fun);
  this->DT = &FAM.getResult<DominatorTreeAnalysis>(fun);

  ompDispatchInitBlocks.clear();
  ompStaticInitBlocks.clear();

  init();
}

void OpenMPLoopManager::init() {
  // initialize the map to the omp related calls
  for (auto &BB : *F) {
    for (auto &I : BB) {
      if (auto call = dyn_cast<CallBase>(&I)) {
        if (call->getCalledFunction() != nullptr && call->getCalledFunction()->hasName()) {
          auto funcName = call->getCalledFunction()->getName();
          if (funcName.startswith(KMPC_STATIC_INIT_PREFIX)) {
            this->ompStaticInitBlocks.insert(std::make_pair(&BB, call));
          } else if (funcName.startswith(KMPC_DISPATCH_INIT_PREFIX)) {
            this->ompDispatchInitBlocks.insert(std::make_pair(&BB, call));
          }
        }
      }
    }
  }
}

Optional<int64_t> OpenMPLoopManager::resolveBoundValue(const AllocaInst *V, const CallBase *initCall) const {
  const llvm::StoreInst *storeInst = nullptr;
  for (auto user : V->users()) {
    if (auto SI = llvm::dyn_cast<llvm::StoreInst>(user)) {
      // simple cases, only has one store instruction
      if (storeInst == nullptr) {
        if (this->DT->dominates(SI, initCall)) {
          storeInst = SI;
        }
      } else {
        if (this->DT->dominates(SI, initCall)) {
          return Optional<int64_t>();
        }
      }
    }
  }

  if (storeInst) {
    auto bound = dyn_cast<ConstantInt>(storeInst->getValueOperand());
    if (bound) {
      return bound->getSExtValue();
    }
    return Optional<int64_t>();
  } else {
    // LOG_DEBUG("omp bound has no store??");
    return Optional<int64_t>();
  }
}

std::pair<Optional<int64_t>, Optional<int64_t>> OpenMPLoopManager::resolveOMPLoopBound(const CallBase *initForCall) const {
  Value *ompLB = nullptr, *ompUB = nullptr;  // up bound and lower bound
  if (initForCall->getCalledFunction()->getName().startswith(KMPC_STATIC_INIT_PREFIX)) {
    ompLB = initForCall->getArgOperand(4);
    ompUB = initForCall->getArgOperand(5);
  } else if (initForCall->getCalledFunction()->getName().startswith(KMPC_DISPATCH_INIT_PREFIX)) {
    ompLB = initForCall->getArgOperand(3);
    ompUB = initForCall->getArgOperand(4);
  } else {
    return std::make_pair(Optional<int64_t>(), Optional<int64_t>());
  }

  auto allocaLB = llvm::dyn_cast<llvm::AllocaInst>(ompLB);
  auto allocaUB = llvm::dyn_cast<llvm::AllocaInst>(ompUB);

  // omp.ub and omp.lb are always alloca?
  if (allocaLB == nullptr || allocaUB == nullptr) {
    return std::make_pair(Optional<int64_t>(), Optional<int64_t>());
  }

  auto LB = resolveBoundValue(allocaLB, initForCall);
  auto UB = resolveBoundValue(allocaUB, initForCall);
  return std::make_pair(LB, UB);
}

OpenMPAnalysis::OpenMPAnalysis() { PB.registerFunctionAnalyses(FAM); }

bool OpenMPAnalysis::canIndexOverlap(const race::MemAccessEvent *event1, const race::MemAccessEvent *event2) {
  auto gep1 = getArrayAccess(event1);
  if (!gep1) return false;

  auto gep2 = getArrayAccess(event2);
  if (!gep2) return false;

  // should be in same function
  if (gep1->getFunction() != gep2->getFunction()) {
    return false;
  }

  auto &targetFun = *const_cast<llvm::Function *>(gep1->getFunction());
  static OpenMPLoopManager ompManager(FAM, targetFun);

  if (&targetFun != ompManager.getTargetFunction()) {
    // we are now analyzing a new function
    ompManager.rebuildWith(FAM, targetFun);
  }

  // TODO: get rid of const cast? Also does FAM cache these results (I think it does?)
  auto &LI = FAM.getResult<LoopAnalysis>(targetFun);
  auto &scev = FAM.getResult<ScalarEvolutionAnalysis>(targetFun);

  BitExtSCEVRewriter rewriter(scev);
  auto scev1 = scev.getSCEV(const_cast<llvm::Value *>(llvm::cast<llvm::Value>(gep1)));
  auto scev2 = scev.getSCEV(const_cast<llvm::Value *>(llvm::cast<llvm::Value>(gep2)));
  // the rewriter here move the bit extension operation into the deepest scopy
  // e.g., (4 + (4 * (sext i32 (2 * %storemerge2) to i64))<nsw> + %a) will be rewrited to
  //   ==> (4 + (8 * (sext i32 %storemerge2 to i64)) + %a)
  // this will simplied the scev expression as sext and zext are considered as variable instead of constant
  // during the computation between two scev expression.
  scev1 = rewriter.visit(scev1);
  scev2 = rewriter.visit(scev2);
  auto diff = dyn_cast<SCEVConstant>(scev.getMinusSCEV(scev1, scev2));

  if (diff == nullptr) {
    // TODO: we are unable to analyze unknown gap array index for now.
    return true;
  }

  if (diff->isZero()) {
    // simplest case, two access the same element, no race for sure
    return false;
  }

  // strip off the scev
  auto omp1 = getOMPLoopSCEV(scev1, ompManager);
  auto omp2 = getOMPLoopSCEV(scev2, ompManager);

  // the scev expression does not contains openmp for loop
  if (!omp1 && !omp2) {
    return true;
  }

  if (!omp1->isAffine() || !omp2->isAffine()) {
    return true;
  }

  // different openmp loop, should never happen though
  if (omp1->getLoop() != omp2->getLoop()) {
    return true;
  }

  // some SCEV is in the form %base + {expr,+,%strip}<omp.loop>
  // since here the gap between two accesses are constant, the variable %base can simply be ignored.
  scev1 = stripSCEVBaseAddr(scev1);
  scev2 = stripSCEVBaseAddr(scev2);

  if (omp1 == scev1 && omp2 == scev2) {
    // the outside-most loop are the parallel loop as well instead of being parallel loop nested in a
    // nested loop.
    uint64_t distance = diff->getAPInt().abs().getLimitedValue();
    auto step = omp1->getOperand(1);

    if (auto constStep = llvm::dyn_cast<llvm::SCEVConstant>(step)) {
      // the step of the loop
      uint64_t loopStep = constStep->getAPInt().abs().getLimitedValue();
      // assume we iterate at least one time
      if (distance == loopStep) {
        return true;
      }

      CallBase *initForCall = ompManager.getStaticInitCallIfExist(omp1->getLoop());
      auto bounds = ompManager.resolveOMPLoopBound(initForCall);
      if (bounds.first.hasValue() && bounds.second.hasValue()) {
        // do we need special handling for negetive bound?
        int64_t lowerBound = std::abs(bounds.first.getValue());
        int64_t upperBound = std::abs(bounds.second.getValue());

        // if both bound are resolvable
        if (std::max(lowerBound, upperBound) < (distance / loopStep)) {
          return false;
        }
      }
    }
  } else {
    // the parallel loop has nested loop inside
    SCEVBoundApplier boundApplier(omp1->getLoop(), scev);

    // this scev represent the largest array elements that will be accessed in the nested loop
    auto b1 = boundApplier.visit(scev1);
    auto b2 = boundApplier.visit(scev2);

    // thus if the largest index is smaller than the smallest index in the next openmp loop iteration
    // there is no race
    // TODO: negative loop? are they canonicalized?
    auto n1 = getNextIterSCEV(omp1, scev);
    auto n2 = getNextIterSCEV(omp2, scev);

    std::vector<const SCEV *> gaps = {scev.getMinusSCEV(n1, b1),
                                      scev.getMinusSCEV(n1, b2),
                                      scev.getMinusSCEV(n2, b1),
                                      scev.getMinusSCEV(n2, b2)};

    if (std::all_of(gaps.begin(), gaps.end(), [](const SCEV *expr)->bool {
          expr->dump();
          if (auto constExpr = dyn_cast<SCEVConstant>(expr)) {
            if (constExpr->getAPInt().isNonPositive()) {
              // the gaps are smaller or equal to zero
              return false;
            }
            return true;
          }
          return false; })) {

      // then there is no race
      return false;
    }
  }

  // If unsure report they do alias
  llvm::errs() << "unsure so reporting alias\n";
  return true;
}

namespace {

// return true if both events belong to the same OpenMP team
// This function is split out so that it can be called from the template functions below (in, inSame, etc)
bool _inSameTeam(const Event* event1, const Event* event2) {
  // Check both spawn events are OpenMP forks
  auto e1Spawn = event1->getThread().spawnSite;
  if (!e1Spawn || (e1Spawn.value()->getIRInst()->type != IR::Type::OpenMPFork)) return false;

  auto e2Spawn = event2->getThread().spawnSite;
  if (!e2Spawn || (e2Spawn.value()->getIRInst()->type != IR::Type::OpenMPFork)) return false;

  // Check they are spawned from same thread
  if (e1Spawn.value()->getThread().id != e2Spawn.value()->getThread().id) return false;

  // Check that they are adjacent. Only matching omp forks can be adjacent, because they are always followed by joins
  auto const eid1 = e1Spawn.value()->getID();
  auto const eid2 = e2Spawn.value()->getID();
  auto const diff = (eid1 > eid2) ? (eid1 - eid2) : (eid2 - eid1);
  return diff == 1;
}

// Get list of (non-nested) event regions
// template definition can be in cpp as long as we dont expose the template outside of this file
template <IR::Type Start, IR::Type End>
std::vector<Region> getRegions(const ThreadTrace &thread) {
  std::vector<Region> regions;

  std::optional<EventID> start;
  for (auto const &event : thread.getEvents()) {
    switch (event->getIRInst()->type) {
      case Start: {
        assert(!start.has_value() && "encountered two start types in a row");
        start = event->getID();
        break;
      }
      case End: {
        assert(start.has_value() && "encountered end type without a matching start type");
        regions.emplace_back(start.value(), event->getID());
        start.reset();
        break;
      }
      default:
        // Nothing
        break;
    }
  }

  return regions;
}

auto constexpr _getLoopRegions = getRegions<IR::Type::OpenMPForInit, IR::Type::OpenMPForFini>;

// return true if event is inside of a region marked by Start and End
// see getRegions for more detail on regions
template <IR::Type Start, IR::Type End>
bool in(const race::Event* event) {
  auto const regions = getRegions<Start, End>(event->getThread());
  auto const eid = event->getID();
  for (auto const& region : regions) {
    if (region.contains(eid)) return true;
    // Break early if we pass the eid without finding matching region
    if (region.end > eid) return false;
  }
  return false;
}

// return true if both events are inside of the region marked by Start and End
// see getRegions for more detail on regions
template <IR::Type Start, IR::Type End>
bool inSame(const Event* event1, const Event* event2) {
  assert(_inSameTeam(event1, event2) && "events must be in same omp team");

  auto const eid1 = event1->getID();
  auto const eid2 = event2->getID();

  // Trace events are ordered, so we can save time by finding the region containing the smaller
  // ID first, and then checking if that region also contains the bigger ID.
  auto const minID = (eid1 < eid2) ? eid1 : eid2;
  auto const maxID = (eid1 > eid2) ? eid1 : eid2;

  // Omp threads in same team will have identical traces so we only need one set of events
  auto const regions = getRegions<Start, End>(event1->getThread());
  for (auto const& region : regions) {
    // If region contains one, check if it also contains the other
    if (region.contains(minID)) return region.contains(maxID);

    // End early if end of this region passes smaller event ID
    if (region.end > minID) return false;
  }
  return false;
}

auto const _inSameSingleBlock = inSame<IR::Type::OpenMPSingleStart, IR::Type::OpenMPSingleEnd>;

}  // namespace

const std::vector<OpenMPAnalysis::LoopRegion> &OpenMPAnalysis::getOmpForLoops(const ThreadTrace &thread) {
  // Check if result is already computed
  auto it = ompForLoops.find(thread.id);
  if (it != ompForLoops.end()) {
    return it->second;
  }

  // Else find the loop regions
  auto const loopRegions = _getLoopRegions(thread);
  ompForLoops[thread.id] = loopRegions;

  return ompForLoops.at(thread.id);
}

bool OpenMPAnalysis::inParallelFor(const race::MemAccessEvent *event) {
  auto loopRegions = getOmpForLoops(event->getThread());
  auto const eid = event->getID();
  for (auto const &region : loopRegions) {
    if (region.contains(eid)) return true;
    // Break early if we pass the eid without finding matching region
    if (region.end > eid) return false;
  }

  return false;
}

bool OpenMPAnalysis::isLoopArrayAccess(const race::MemAccessEvent *event1, const race::MemAccessEvent *event2) {
  auto gep1 = getArrayAccess(event1);
  if (!gep1) return false;

  auto gep2 = getArrayAccess(event2);
  if (!gep2) return false;

  return inParallelFor(event1) && inParallelFor(event2);
}

bool OpenMPAnalysis::inSameTeam(const Event* event1, const Event* event2) const { return _inSameTeam(event1, event2); }

bool OpenMPAnalysis::inSameSingleBlock(const Event* event1, const Event* event2) const {
  return _inSameSingleBlock(event1, event2);
}

std::vector<const llvm::BasicBlock*>& ReduceAnalysis::computeGuardedBlocks(ReduceInst reduce) const {
  assert(reduceBlocks.find(reduce) == reduceBlocks.end() &&
         "Should not call compute if results have already been computed");

  // compute results, cache them, then return them
  auto& blocks = reduceBlocks[reduce];

  /* We are expecting the reduce code produced by clang to follow a specific pattern:
    -------------------------------------------------
      %15 = call i32 @__kmpc_reduce(...)
      switch i32 %15, label %.omp.reduction.default [
        i32 1, label %.omp.reduction.case1
        i32 2, label %.omp.reduction.case2
      ]

    .omp.reduction.case1:
      ...
      call void @__kmpc_end_reduce(...)
      br label %.omp.reduction.default

    .omp.reduction.case2:
      ...
      call void @__kmpc_end_reduce(...)
      br label %.omp.reduction.default

    .omp.reduction.default:
      ...
    -------------------------------------------------

    Our logic makes the following assumptions:
      - There is a switch after the reduce call
      - the default case on the switch is the end fo the reduce code
      - The default case post-dominates the switch

    If these assumptions are true, we can get the blocks that make up
    the reduction code by getting all blocks that are reachable from the switch but
    stop when we reach the default case block (end of the reduce code)
  */

  auto const switchInst = llvm::dyn_cast<llvm::SwitchInst>(reduce->getNextNode());
  assert(switchInst && "instruction after reduce should always be switch");

  // Default dest marks the end of the reduce
  auto const exitBlock = switchInst->getDefaultDest();

  std::vector<const llvm::BasicBlock*> worklist;
  std::set<const llvm::BasicBlock*> visited;
  for (auto const succ : successors(switchInst)) {
    worklist.push_back(succ);
  }

  while (!worklist.empty()) {
    auto block = worklist.back();
    worklist.pop_back();
    visited.insert(block);

<<<<<<< HEAD
    // Stop traversing when we reach end of reduce code
    if (block == exitBlock) continue;
=======
bool OpenMPAnalysis::inSameSingleBlock(const Event *event1, const Event *event2) const {
  assert(inSameTeam(event1, event2));
>>>>>>> 343b128 (better constant propagation + fix misuse of noalias)

    // add to list of blocks covered by this reduce
    blocks.push_back(block);

    // sanity check that all succ must eventually reach exitBlock
    assert(llvm::succ_size(block) > 0 && "block should have successors");

<<<<<<< HEAD
    // Keep traversing
    for (auto const succ : llvm::successors(block)) {
      if (visited.find(succ) == visited.end()) {
        if (visited.find(succ) == visited.end()) {
          worklist.push_back(succ);
        }
      }
    }
  }
=======
  // Omp threads in same team will have identical traces so we only need one set of events
  auto const singleRegions = getSingleRegions(event1->getThread());
  for (auto const &region : singleRegions) {
    // If region contains one, check if it also contains the other
    if (region.contains(minID)) return region.contains(maxID);
>>>>>>> 343b128 (better constant propagation + fix misuse of noalias)

  return blocks;
}

const std::vector<const llvm::BasicBlock*>& ReduceAnalysis::getReduceBlocks(ReduceInst reduce) const {
  // Check cache first
  if (auto it = reduceBlocks.find(reduce); it != reduceBlocks.end()) {
    return it->second;
  }

  // Else compute
  return computeGuardedBlocks(reduce);
}

bool ReduceAnalysis::reduceContains(const llvm::Instruction* reduce, const llvm::Instruction* inst) const {
  auto const& blocks = getReduceBlocks(reduce);
  return std::find(blocks.begin(), blocks.end(), inst->getParent()) != blocks.end();
}

bool OpenMPAnalysis::inSameReduce(const Event* event1, const Event* event2) const {
  // Find reduce events
  for (auto const& event : event1->getThread().getEvents()) {
    // If an event e is inside of a reduce block it must occur *after* the reduce event
    // so, if either event is encountered before finding a reduce that contains both event1 and event2
    // we know that they are not in the same reduce block
    if (event->getID() == event1->getID() || event->getID() == event2->getID()) return false;

    // Once a reduce is found, check that it contains both events (true)
    // or that it contains neither event (keep searching)
    // if it contains one but not the other, return false
    if (event->getIRInst()->type == IR::Type::OpenMPReduce) {
      auto const reduce = event->getInst();
      auto const contains1 = reduceAnalysis.reduceContains(reduce, event1->getInst());
      auto const contains2 = reduceAnalysis.reduceContains(reduce, event2->getInst());
      if (contains1 && contains2) return true;
      if (contains1 || contains2) return false;
    }
  }

  return false;
}
