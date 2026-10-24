import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS107
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S107 : statesS107.all stateWithinBound = true := by decide +kernel

theorem closed_S107 : closedShard stateAt statesS107 stepsS107 = true := by decide +kernel

theorem across_S107 : acrossShard stateAt smallIndexed statesS107 acrossS107 = true := by decide +kernel

theorem counts_S107 : statesS107.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
