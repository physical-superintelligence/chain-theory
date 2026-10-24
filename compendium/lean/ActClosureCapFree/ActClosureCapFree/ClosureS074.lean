import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS074
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S074 : statesS074.all stateWithinBound = true := by decide +kernel

theorem closed_S074 : closedShard stateAt statesS074 stepsS074 = true := by decide +kernel

theorem across_S074 : acrossShard stateAt smallIndexed statesS074 acrossS074 = true := by decide +kernel

theorem counts_S074 : statesS074.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
