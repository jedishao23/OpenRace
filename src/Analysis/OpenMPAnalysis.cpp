#include "Analysis/OpenMPAnalysis.h"

#include "IR/IRImpls.h"
#include "LanguageModel/OpenMP.h"
#include "Trace/Event.h"
#include "Trace/ThreadTrace.h"

using namespace race;

namespace {

const llvm::GetElementPtrInst* getArrayAccess(const MemAccessEvent* event) {
  return llvm::dyn_cast<llvm::GetElementPtrInst>(event->getIRInst()->getAccessedValue()->stripPointerCasts());
}

}  // namespace

OpenMPAnalysis::OpenMPAnalysis() { PB.registerFunctionAnalyses(FAM); }

bool OpenMPAnalysis::canIndexOverlap(const race::MemAccessEvent* event1, const race::MemAccessEvent* event2) {
  auto gep1 = getArrayAccess(event1);
  if (!gep1) return false;

  auto gep2 = getArrayAccess(event2);
  if (!gep2) return false;

  // should be in same function
  if (gep1->getFunction() != gep2->getFunction()) {
    return false;
  }

  // TODO: get rid of const cast? Also does FAM cache these results (I think it does?)
  auto& scev = FAM.getResult<llvm::ScalarEvolutionAnalysis>(*const_cast<llvm::Function*>(gep1->getFunction()));

  auto scev1 = scev.getSCEV(const_cast<llvm::Value*>(llvm::cast<llvm::Value>(gep1)));
  auto scev2 = scev.getSCEV(const_cast<llvm::Value*>(llvm::cast<llvm::Value>(gep2)));
  auto diff = scev.getMinusSCEV(scev1, scev2);

  if (auto gap = llvm::dyn_cast<llvm::SCEVConstant>(diff)) {
    return !gap->isZero();
  }

  // If unsure report they do alias
  llvm::errs() << "unsure so reporting alias\n";
  return true;
}

namespace {

// return true if both events belong to the same OpenMP team
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
std::vector<Region> getRegions(const ThreadTrace& thread) {
  std::vector<Region> regions;

  std::optional<EventID> start;
  for (auto const& event : thread.getEvents()) {
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

auto constexpr _inReduce = in<IR::Type::OpenMPReduceStart, IR::Type::OpenMPReduceEnd>;

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
auto const _inSameReduceNowait = inSame<IR::Type::OpenMPReduceNowaitStart, IR::Type::OpenMPReduceNowaitEnd>;

}  // namespace

const std::vector<OpenMPAnalysis::LoopRegion>& OpenMPAnalysis::getOmpForLoopsCached(const ThreadTrace& thread) {
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

bool OpenMPAnalysis::inParallelFor(const race::MemAccessEvent* event) {
  auto loopRegions = getOmpForLoopsCached(event->getThread());
  auto const eid = event->getID();
  for (auto const& region : loopRegions) {
    if (region.contains(eid)) return true;
    // Break early if we pass the eid without finding matching region
    if (region.end > eid) return false;
  }

  return false;
}

bool OpenMPAnalysis::isLoopArrayAccess(const race::MemAccessEvent* event1, const race::MemAccessEvent* event2) {
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

bool OpenMPAnalysis::inReduce(const Event* event) const { return _inReduce(event); }

namespace {
struct ReduceAnalysis {
  using ReduceInst = const llvm::Instruction*;
  using Blocks = std::vector<const llvm::BasicBlock*>;

  // Map of Reduce inst and the blocks that belong to that reduction
  std::map<ReduceInst, Blocks> reductionBlocks;

  // compute blocks guarded by reduce and insert into cache
  const Blocks& computeGuardedBlocks(ReduceInst inst) {
    // compute results, cache them, then return them
    auto& blocks = reductionBlocks[inst];
    assert(blocks.empty() && "Should not call compute if results have already been computed");

    auto const switchInst = llvm::dyn_cast<llvm::SwitchInst>(inst->getNextNode());
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

      // Stop traversing when we reach end of reduce code
      if (block == exitBlock) continue;

      // add to list of blocks covered by this reduce
      blocks.push_back(block);

      // sanity check that all succ must eventually reach exitBlock
      assert(llvm::succ_size(block) > 0 && "block should have successors");

      // Keep traversing
      for (auto const succ : llvm::successors(block)) {
        if (visited.find(succ) == visited.end()) {
          if (visited.find(succ) == visited.end()) {
            worklist.push_back(succ);
          }
        }
      }
    }

    return blocks;
  }

  const Blocks& getGuardedBlocks(ReduceInst inst) {
    // first check cached results
    auto it = reductionBlocks.find(inst);
    if (it != reductionBlocks.end()) {
      return it->second;
    }

    return computeGuardedBlocks(inst);
  }

  bool reduceContains(ReduceInst reduce, const llvm::Instruction* inst) {
    auto const& blocks = getGuardedBlocks(reduce);
    return std::find(blocks.begin(), blocks.end(), inst->getParent()) != blocks.end();
  }
};
}  // namespace

bool OpenMPAnalysis::inSameReduceNowait(const Event* event1, const Event* event2) const {
  ReduceAnalysis ra;

  for (auto const& event : event1->getThread().getEvents()) {
    if (event->getID() == event1->getID() || event->getID() == event2->getID()) return false;

    if (event->getIRInst()->type == IR::Type::OpenMPReduce) {
      auto const reduce = event->getInst();
      auto const contains1 = ra.reduceContains(reduce, event1->getInst());
      auto const contains2 = ra.reduceContains(reduce, event2->getInst());
      if (contains1 && contains2) return true;
      if (contains1 || contains2) return false;
    }
  }

  return false;
}