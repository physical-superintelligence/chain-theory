import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS019
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S019 : statesS019.all stateWithinBound = true := by decide +kernel

theorem closed_S019 : closedShard stateAt statesS019 stepsS019 = true := by decide +kernel

theorem across_S019 : acrossShard stateAt smallIndexed statesS019 acrossS019 = true := by decide +kernel

theorem counts_S019 : statesS019.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
