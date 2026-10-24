import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS109
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S109 : statesS109.all stateWithinBound = true := by decide +kernel

theorem closed_S109 : closedShard stateAt statesS109 stepsS109 = true := by decide +kernel

theorem across_S109 : acrossShard stateAt smallIndexed statesS109 acrossS109 = true := by decide +kernel

theorem counts_S109 : statesS109.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
