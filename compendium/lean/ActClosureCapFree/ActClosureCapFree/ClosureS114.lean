import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS114
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S114 : statesS114.all stateWithinBound = true := by decide +kernel

theorem closed_S114 : closedShard stateAt statesS114 stepsS114 = true := by decide +kernel

theorem across_S114 : acrossShard stateAt smallIndexed statesS114 acrossS114 = true := by decide +kernel

theorem counts_S114 : statesS114.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
