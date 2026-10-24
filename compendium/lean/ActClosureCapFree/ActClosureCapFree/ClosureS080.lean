import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS080
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S080 : statesS080.all stateWithinBound = true := by decide +kernel

theorem closed_S080 : closedShard stateAt statesS080 stepsS080 = true := by decide +kernel

theorem across_S080 : acrossShard stateAt smallIndexed statesS080 acrossS080 = true := by decide +kernel

theorem counts_S080 : statesS080.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
