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

#pragma once

#include <llvm/ADT/StringRef.h>

#include <set>
#include <string>

#include "Reporter/Reporter.h"

using Oracle = std::pair<std::string, std::vector<std::string>>;

// used for testing
struct TestRace {
  // build race from string in format "file:line:col file:line:col"
  static TestRace fromString(llvm::StringRef s);

  // build set of races from strings
  static std::set<TestRace> fromStrings(std::vector<llvm::StringRef> strings);

  // Check if location of TestRace matches the actual race
  bool equals(const race::Race &race) const;

  bool operator==(const TestRace &other) const { return first == other.first && second == other.second; }
  bool operator<(const TestRace &other) const {
    if (first != other.first) return first < other.first;
    return second < other.second;
  }

 private:
  // TestRace only stores SourceLocs
  race::SourceLoc first;
  race::SourceLoc second;
  TestRace(race::SourceLoc first, race::SourceLoc second) : first(first), second(second) {
    if (second < first) std::swap(first, second);
  }
};

// Helpers for testing
bool reportContains(const race::Report &report, TestRace race);
bool reportContains(const race::Report &report, std::vector<TestRace> races);
