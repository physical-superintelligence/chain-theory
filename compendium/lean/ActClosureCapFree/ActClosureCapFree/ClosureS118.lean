import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS118
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S118 : statesS118.all stateWithinBound = true := by decide +kernel

theorem closed_S118 : closedShard stateAt statesS118 stepsS118 = true := by decide +kernel

theorem across_S118 : acrossShard stateAt smallIndexed statesS118 acrossS118 = true := by decide +kernel

theorem counts_S118 : statesS118.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
