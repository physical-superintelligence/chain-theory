import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS102
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S102 : statesS102.all stateWithinBound = true := by decide +kernel

theorem closed_S102 : closedShard stateAt statesS102 stepsS102 = true := by decide +kernel

theorem across_S102 : acrossShard stateAt smallIndexed statesS102 acrossS102 = true := by decide +kernel

theorem counts_S102 : statesS102.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
