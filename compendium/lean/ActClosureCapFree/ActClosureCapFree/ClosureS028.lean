import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS028
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S028 : statesS028.all stateWithinBound = true := by decide +kernel

theorem closed_S028 : closedShard stateAt statesS028 stepsS028 = true := by decide +kernel

theorem across_S028 : acrossShard stateAt smallIndexed statesS028 acrossS028 = true := by decide +kernel

theorem counts_S028 : statesS028.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
