import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS026
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S026 : statesS026.all stateWithinBound = true := by decide +kernel

theorem closed_S026 : closedShard stateAt statesS026 stepsS026 = true := by decide +kernel

theorem across_S026 : acrossShard stateAt smallIndexed statesS026 acrossS026 = true := by decide +kernel

theorem counts_S026 : statesS026.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
