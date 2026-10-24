import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS128
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S128 : statesS128.all stateWithinBound = true := by decide +kernel

theorem closed_S128 : closedShard stateAt statesS128 stepsS128 = true := by decide +kernel

theorem across_S128 : acrossShard stateAt smallIndexed statesS128 acrossS128 = true := by decide +kernel

theorem counts_S128 : statesS128.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
