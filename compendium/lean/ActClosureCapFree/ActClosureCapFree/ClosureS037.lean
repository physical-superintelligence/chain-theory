import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS037
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S037 : statesS037.all stateWithinBound = true := by decide +kernel

theorem closed_S037 : closedShard stateAt statesS037 stepsS037 = true := by decide +kernel

theorem across_S037 : acrossShard stateAt smallIndexed statesS037 acrossS037 = true := by decide +kernel

theorem counts_S037 : statesS037.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
