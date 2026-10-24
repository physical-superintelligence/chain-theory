import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS094
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S094 : statesS094.all stateWithinBound = true := by decide +kernel

theorem closed_S094 : closedShard stateAt statesS094 stepsS094 = true := by decide +kernel

theorem across_S094 : acrossShard stateAt smallIndexed statesS094 acrossS094 = true := by decide +kernel

theorem counts_S094 : statesS094.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
