import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS106
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S106 : statesS106.all stateWithinBound = true := by decide +kernel

theorem closed_S106 : closedShard stateAt statesS106 stepsS106 = true := by decide +kernel

theorem across_S106 : acrossShard stateAt smallIndexed statesS106 acrossS106 = true := by decide +kernel

theorem counts_S106 : statesS106.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
