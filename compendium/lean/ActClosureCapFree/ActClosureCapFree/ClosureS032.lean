import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS032
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S032 : statesS032.all stateWithinBound = true := by decide +kernel

theorem closed_S032 : closedShard stateAt statesS032 stepsS032 = true := by decide +kernel

theorem across_S032 : acrossShard stateAt smallIndexed statesS032 acrossS032 = true := by decide +kernel

theorem counts_S032 : statesS032.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
