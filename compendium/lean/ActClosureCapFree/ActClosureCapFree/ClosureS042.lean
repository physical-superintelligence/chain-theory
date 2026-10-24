import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS042
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S042 : statesS042.all stateWithinBound = true := by decide +kernel

theorem closed_S042 : closedShard stateAt statesS042 stepsS042 = true := by decide +kernel

theorem across_S042 : acrossShard stateAt smallIndexed statesS042 acrossS042 = true := by decide +kernel

theorem counts_S042 : statesS042.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
