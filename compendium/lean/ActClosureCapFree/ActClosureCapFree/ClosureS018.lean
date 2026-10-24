import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS018
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S018 : statesS018.all stateWithinBound = true := by decide +kernel

theorem closed_S018 : closedShard stateAt statesS018 stepsS018 = true := by decide +kernel

theorem across_S018 : acrossShard stateAt smallIndexed statesS018 acrossS018 = true := by decide +kernel

theorem counts_S018 : statesS018.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
