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

#include "PointerAnalysis/Solver/PointsTo/BitVectorPTS.h"
#include "PointerAnalysis/Solver/PointsTo/PointedByPts.h"

namespace pta {
uint32_t BitVectorPTS::PTS_SIZE_LIMIT = std::numeric_limits<uint32_t>::max();  // no limit
std::vector<BitVectorPTS::PtsTy> BitVectorPTS::ptsVec;

uint32_t PointedByPts::PTS_SIZE_LIMIT = std::numeric_limits<uint32_t>::max();  // no limit
std::vector<PointedByPts::PtsTy> PointedByPts::pointsTo;
std::vector<PointedByPts::PtsTy> PointedByPts::pointedBy;
}  // namespace pta