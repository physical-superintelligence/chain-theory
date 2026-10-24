import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS120
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S120 : statesS120.all stateWithinBound = true := by decide +kernel

theorem closed_S120 : closedShard stateAt statesS120 stepsS120 = true := by decide +kernel

theorem across_S120 : acrossShard stateAt smallIndexed statesS120 acrossS120 = true := by decide +kernel

theorem counts_S120 : statesS120.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
