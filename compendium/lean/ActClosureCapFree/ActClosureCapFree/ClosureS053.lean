import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS053
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S053 : statesS053.all stateWithinBound = true := by decide +kernel

theorem closed_S053 : closedShard stateAt statesS053 stepsS053 = true := by decide +kernel

theorem across_S053 : acrossShard stateAt smallIndexed statesS053 acrossS053 = true := by decide +kernel

theorem counts_S053 : statesS053.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
