import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS040
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S040 : statesS040.all stateWithinBound = true := by decide +kernel

theorem closed_S040 : closedShard stateAt statesS040 stepsS040 = true := by decide +kernel

theorem across_S040 : acrossShard stateAt smallIndexed statesS040 acrossS040 = true := by decide +kernel

theorem counts_S040 : statesS040.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
