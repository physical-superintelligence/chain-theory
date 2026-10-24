import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS086
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S086 : statesS086.all stateWithinBound = true := by decide +kernel

theorem closed_S086 : closedShard stateAt statesS086 stepsS086 = true := by decide +kernel

theorem across_S086 : acrossShard stateAt smallIndexed statesS086 acrossS086 = true := by decide +kernel

theorem counts_S086 : statesS086.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
