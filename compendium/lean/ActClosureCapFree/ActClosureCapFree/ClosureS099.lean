import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS099
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S099 : statesS099.all stateWithinBound = true := by decide +kernel

theorem closed_S099 : closedShard stateAt statesS099 stepsS099 = true := by decide +kernel

theorem across_S099 : acrossShard stateAt smallIndexed statesS099 acrossS099 = true := by decide +kernel

theorem counts_S099 : statesS099.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
