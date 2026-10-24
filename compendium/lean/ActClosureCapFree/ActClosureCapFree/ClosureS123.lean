import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS123
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S123 : statesS123.all stateWithinBound = true := by decide +kernel

theorem closed_S123 : closedShard stateAt statesS123 stepsS123 = true := by decide +kernel

theorem across_S123 : acrossShard stateAt smallIndexed statesS123 acrossS123 = true := by decide +kernel

theorem counts_S123 : statesS123.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
