import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS122
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S122 : statesS122.all stateWithinBound = true := by decide +kernel

theorem closed_S122 : closedShard stateAt statesS122 stepsS122 = true := by decide +kernel

theorem across_S122 : acrossShard stateAt smallIndexed statesS122 acrossS122 = true := by decide +kernel

theorem counts_S122 : statesS122.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
