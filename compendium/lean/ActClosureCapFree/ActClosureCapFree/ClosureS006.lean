import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS006
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S006 : statesS006.all stateWithinBound = true := by decide +kernel

theorem closed_S006 : closedShard stateAt statesS006 stepsS006 = true := by decide +kernel

theorem across_S006 : acrossShard stateAt smallIndexed statesS006 acrossS006 = true := by decide +kernel

theorem counts_S006 : statesS006.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
