import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS071
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S071 : statesS071.all stateWithinBound = true := by decide +kernel

theorem closed_S071 : closedShard stateAt statesS071 stepsS071 = true := by decide +kernel

theorem across_S071 : acrossShard stateAt smallIndexed statesS071 acrossS071 = true := by decide +kernel

theorem counts_S071 : statesS071.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
