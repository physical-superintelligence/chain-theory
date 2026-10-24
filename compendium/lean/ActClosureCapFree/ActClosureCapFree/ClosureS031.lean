import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS031
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S031 : statesS031.all stateWithinBound = true := by decide +kernel

theorem closed_S031 : closedShard stateAt statesS031 stepsS031 = true := by decide +kernel

theorem across_S031 : acrossShard stateAt smallIndexed statesS031 acrossS031 = true := by decide +kernel

theorem counts_S031 : statesS031.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
