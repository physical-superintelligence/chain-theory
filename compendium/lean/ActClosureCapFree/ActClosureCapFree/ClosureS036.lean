import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS036
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S036 : statesS036.all stateWithinBound = true := by decide +kernel

theorem closed_S036 : closedShard stateAt statesS036 stepsS036 = true := by decide +kernel

theorem across_S036 : acrossShard stateAt smallIndexed statesS036 acrossS036 = true := by decide +kernel

theorem counts_S036 : statesS036.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
