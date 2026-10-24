import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS101
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S101 : statesS101.all stateWithinBound = true := by decide +kernel

theorem closed_S101 : closedShard stateAt statesS101 stepsS101 = true := by decide +kernel

theorem across_S101 : acrossShard stateAt smallIndexed statesS101 acrossS101 = true := by decide +kernel

theorem counts_S101 : statesS101.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
