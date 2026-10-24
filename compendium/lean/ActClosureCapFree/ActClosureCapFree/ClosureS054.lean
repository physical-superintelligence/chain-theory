import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS054
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S054 : statesS054.all stateWithinBound = true := by decide +kernel

theorem closed_S054 : closedShard stateAt statesS054 stepsS054 = true := by decide +kernel

theorem across_S054 : acrossShard stateAt smallIndexed statesS054 acrossS054 = true := by decide +kernel

theorem counts_S054 : statesS054.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
