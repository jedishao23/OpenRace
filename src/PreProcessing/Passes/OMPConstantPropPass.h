/* Copyright 2021 Coderrect Inc. All Rights Reserved.
Licensed under the GNU Affero General Public License, version 3 or later (“AGPL”), as published by the Free Software
Foundation. You may not use this file except in compliance with the License. You may obtain a copy of the License at
https://www.gnu.org/licenses/agpl-3.0.en.html
Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an “AS IS” BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
==============================================================================*/
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
