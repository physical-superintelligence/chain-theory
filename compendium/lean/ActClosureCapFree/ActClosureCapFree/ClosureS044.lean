import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS044
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S044 : statesS044.all stateWithinBound = true := by decide +kernel

theorem closed_S044 : closedShard stateAt statesS044 stepsS044 = true := by decide +kernel

theorem across_S044 : acrossShard stateAt smallIndexed statesS044 acrossS044 = true := by decide +kernel

theorem counts_S044 : statesS044.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
