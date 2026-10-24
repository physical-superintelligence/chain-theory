import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS073
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S073 : statesS073.all stateWithinBound = true := by decide +kernel

theorem closed_S073 : closedShard stateAt statesS073 stepsS073 = true := by decide +kernel

theorem across_S073 : acrossShard stateAt smallIndexed statesS073 acrossS073 = true := by decide +kernel

theorem counts_S073 : statesS073.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
