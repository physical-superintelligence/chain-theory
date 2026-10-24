import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS022
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S022 : statesS022.all stateWithinBound = true := by decide +kernel

theorem closed_S022 : closedShard stateAt statesS022 stepsS022 = true := by decide +kernel

theorem across_S022 : acrossShard stateAt smallIndexed statesS022 acrossS022 = true := by decide +kernel

theorem counts_S022 : statesS022.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
