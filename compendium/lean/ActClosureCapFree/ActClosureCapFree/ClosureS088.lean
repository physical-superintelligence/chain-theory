import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS088
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S088 : statesS088.all stateWithinBound = true := by decide +kernel

theorem closed_S088 : closedShard stateAt statesS088 stepsS088 = true := by decide +kernel

theorem across_S088 : acrossShard stateAt smallIndexed statesS088 acrossS088 = true := by decide +kernel

theorem counts_S088 : statesS088.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
