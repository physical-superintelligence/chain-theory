import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS048
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S048 : statesS048.all stateWithinBound = true := by decide +kernel

theorem closed_S048 : closedShard stateAt statesS048 stepsS048 = true := by decide +kernel

theorem across_S048 : acrossShard stateAt smallIndexed statesS048 acrossS048 = true := by decide +kernel

theorem counts_S048 : statesS048.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
