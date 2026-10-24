import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS069
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S069 : statesS069.all stateWithinBound = true := by decide +kernel

theorem closed_S069 : closedShard stateAt statesS069 stepsS069 = true := by decide +kernel

theorem across_S069 : acrossShard stateAt smallIndexed statesS069 acrossS069 = true := by decide +kernel

theorem counts_S069 : statesS069.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
