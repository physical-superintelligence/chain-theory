import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS125
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S125 : statesS125.all stateWithinBound = true := by decide +kernel

theorem closed_S125 : closedShard stateAt statesS125 stepsS125 = true := by decide +kernel

theorem across_S125 : acrossShard stateAt smallIndexed statesS125 acrossS125 = true := by decide +kernel

theorem counts_S125 : statesS125.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
