import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS110
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S110 : statesS110.all stateWithinBound = true := by decide +kernel

theorem closed_S110 : closedShard stateAt statesS110 stepsS110 = true := by decide +kernel

theorem across_S110 : acrossShard stateAt smallIndexed statesS110 acrossS110 = true := by decide +kernel

theorem counts_S110 : statesS110.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
