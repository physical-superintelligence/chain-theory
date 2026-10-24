import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS075
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S075 : statesS075.all stateWithinBound = true := by decide +kernel

theorem closed_S075 : closedShard stateAt statesS075 stepsS075 = true := by decide +kernel

theorem across_S075 : acrossShard stateAt smallIndexed statesS075 acrossS075 = true := by decide +kernel

theorem counts_S075 : statesS075.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
