import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS119
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S119 : statesS119.all stateWithinBound = true := by decide +kernel

theorem closed_S119 : closedShard stateAt statesS119 stepsS119 = true := by decide +kernel

theorem across_S119 : acrossShard stateAt smallIndexed statesS119 acrossS119 = true := by decide +kernel

theorem counts_S119 : statesS119.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
