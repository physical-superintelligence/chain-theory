import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS095
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S095 : statesS095.all stateWithinBound = true := by decide +kernel

theorem closed_S095 : closedShard stateAt statesS095 stepsS095 = true := by decide +kernel

theorem across_S095 : acrossShard stateAt smallIndexed statesS095 acrossS095 = true := by decide +kernel

theorem counts_S095 : statesS095.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
