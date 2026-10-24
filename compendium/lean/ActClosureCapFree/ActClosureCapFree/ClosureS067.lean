import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS067
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S067 : statesS067.all stateWithinBound = true := by decide +kernel

theorem closed_S067 : closedShard stateAt statesS067 stepsS067 = true := by decide +kernel

theorem across_S067 : acrossShard stateAt smallIndexed statesS067 acrossS067 = true := by decide +kernel

theorem counts_S067 : statesS067.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
