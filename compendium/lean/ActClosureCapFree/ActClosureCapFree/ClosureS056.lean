import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS056
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S056 : statesS056.all stateWithinBound = true := by decide +kernel

theorem closed_S056 : closedShard stateAt statesS056 stepsS056 = true := by decide +kernel

theorem across_S056 : acrossShard stateAt smallIndexed statesS056 acrossS056 = true := by decide +kernel

theorem counts_S056 : statesS056.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
