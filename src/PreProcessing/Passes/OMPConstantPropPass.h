//
// Created by peiming on 5/11/21.
//

#ifndef OPENRACE_OMPCONSTANTPROPPASS_H
#define OPENRACE_OMPCONSTANTPROPPASS_H

#include <llvm/Analysis/TargetLibraryInfo.h>
#include <llvm/IR/Dominators.h>
#include <llvm/Pass.h>

class OMPConstantPropPass : public llvm::PassInfoMixin<OMPConstantPropPass> {
 public:
  llvm::PreservedAnalyses run(llvm::Module &M, llvm::ModuleAnalysisManager &AM);
  static bool isRequired() { return true; }
};

struct LegacyOMPConstantPropPass : public llvm::ModulePass {
  static char ID;  // Pass identification, replacement for typeid
  LegacyOMPConstantPropPass() : ModulePass(ID) {}

  void getAnalysisUsage(llvm::AnalysisUsage &AU) const override {
    AU.setPreservesCFG();
    AU.addRequired<llvm::TargetLibraryInfoWrapperPass>();
    AU.addRequired<llvm::DominatorTreeWrapperPass>();
  }

  bool runOnModule(llvm::Module &M) override;
};


#endif  // OPENRACE_OMPCONSTANTPROPPASS_H
