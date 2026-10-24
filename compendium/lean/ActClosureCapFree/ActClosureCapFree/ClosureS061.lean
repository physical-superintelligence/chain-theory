import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS061
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S061 : statesS061.all stateWithinBound = true := by decide +kernel

theorem closed_S061 : closedShard stateAt statesS061 stepsS061 = true := by decide +kernel

theorem across_S061 : acrossShard stateAt smallIndexed statesS061 acrossS061 = true := by decide +kernel

theorem counts_S061 : statesS061.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
