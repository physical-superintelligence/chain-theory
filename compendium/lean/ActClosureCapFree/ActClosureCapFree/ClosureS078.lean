import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS078
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S078 : statesS078.all stateWithinBound = true := by decide +kernel

theorem closed_S078 : closedShard stateAt statesS078 stepsS078 = true := by decide +kernel

theorem across_S078 : acrossShard stateAt smallIndexed statesS078 acrossS078 = true := by decide +kernel

theorem counts_S078 : statesS078.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
