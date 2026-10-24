import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS090
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S090 : statesS090.all stateWithinBound = true := by decide +kernel

theorem closed_S090 : closedShard stateAt statesS090 stepsS090 = true := by decide +kernel

theorem across_S090 : acrossShard stateAt smallIndexed statesS090 acrossS090 = true := by decide +kernel

theorem counts_S090 : statesS090.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
