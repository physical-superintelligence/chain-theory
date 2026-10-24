import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS117
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S117 : statesS117.all stateWithinBound = true := by decide +kernel

theorem closed_S117 : closedShard stateAt statesS117 stepsS117 = true := by decide +kernel

theorem across_S117 : acrossShard stateAt smallIndexed statesS117 acrossS117 = true := by decide +kernel

theorem counts_S117 : statesS117.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
