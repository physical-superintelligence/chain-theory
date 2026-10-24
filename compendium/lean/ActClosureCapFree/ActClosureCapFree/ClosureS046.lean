import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS046
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S046 : statesS046.all stateWithinBound = true := by decide +kernel

theorem closed_S046 : closedShard stateAt statesS046 stepsS046 = true := by decide +kernel

theorem across_S046 : acrossShard stateAt smallIndexed statesS046 acrossS046 = true := by decide +kernel

theorem counts_S046 : statesS046.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
