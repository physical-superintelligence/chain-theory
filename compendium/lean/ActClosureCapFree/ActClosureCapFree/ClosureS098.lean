import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS098
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S098 : statesS098.all stateWithinBound = true := by decide +kernel

theorem closed_S098 : closedShard stateAt statesS098 stepsS098 = true := by decide +kernel

theorem across_S098 : acrossShard stateAt smallIndexed statesS098 acrossS098 = true := by decide +kernel

theorem counts_S098 : statesS098.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
