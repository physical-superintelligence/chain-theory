import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS129
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S129 : statesS129.all stateWithinBound = true := by decide +kernel

theorem closed_S129 : closedShard stateAt statesS129 stepsS129 = true := by decide +kernel

theorem across_S129 : acrossShard stateAt smallIndexed statesS129 acrossS129 = true := by decide +kernel

theorem counts_S129 : statesS129.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
