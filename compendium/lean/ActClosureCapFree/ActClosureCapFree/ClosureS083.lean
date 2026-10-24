import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS083
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S083 : statesS083.all stateWithinBound = true := by decide +kernel

theorem closed_S083 : closedShard stateAt statesS083 stepsS083 = true := by decide +kernel

theorem across_S083 : acrossShard stateAt smallIndexed statesS083 acrossS083 = true := by decide +kernel

theorem counts_S083 : statesS083.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
