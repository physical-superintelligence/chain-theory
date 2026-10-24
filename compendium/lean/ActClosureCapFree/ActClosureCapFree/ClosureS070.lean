import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS070
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S070 : statesS070.all stateWithinBound = true := by decide +kernel

theorem closed_S070 : closedShard stateAt statesS070 stepsS070 = true := by decide +kernel

theorem across_S070 : acrossShard stateAt smallIndexed statesS070 acrossS070 = true := by decide +kernel

theorem counts_S070 : statesS070.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
