import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS041
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S041 : statesS041.all stateWithinBound = true := by decide +kernel

theorem closed_S041 : closedShard stateAt statesS041 stepsS041 = true := by decide +kernel

theorem across_S041 : acrossShard stateAt smallIndexed statesS041 acrossS041 = true := by decide +kernel

theorem counts_S041 : statesS041.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
