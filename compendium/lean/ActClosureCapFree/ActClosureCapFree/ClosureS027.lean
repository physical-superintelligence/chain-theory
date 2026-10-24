import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS027
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S027 : statesS027.all stateWithinBound = true := by decide +kernel

theorem closed_S027 : closedShard stateAt statesS027 stepsS027 = true := by decide +kernel

theorem across_S027 : acrossShard stateAt smallIndexed statesS027 acrossS027 = true := by decide +kernel

theorem counts_S027 : statesS027.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
