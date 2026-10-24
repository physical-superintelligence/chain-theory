import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS097
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S097 : statesS097.all stateWithinBound = true := by decide +kernel

theorem closed_S097 : closedShard stateAt statesS097 stepsS097 = true := by decide +kernel

theorem across_S097 : acrossShard stateAt smallIndexed statesS097 acrossS097 = true := by decide +kernel

theorem counts_S097 : statesS097.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
