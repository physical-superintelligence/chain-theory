import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS124
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S124 : statesS124.all stateWithinBound = true := by decide +kernel

theorem closed_S124 : closedShard stateAt statesS124 stepsS124 = true := by decide +kernel

theorem across_S124 : acrossShard stateAt smallIndexed statesS124 acrossS124 = true := by decide +kernel

theorem counts_S124 : statesS124.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
