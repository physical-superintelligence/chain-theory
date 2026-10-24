import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS066
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S066 : statesS066.all stateWithinBound = true := by decide +kernel

theorem closed_S066 : closedShard stateAt statesS066 stepsS066 = true := by decide +kernel

theorem across_S066 : acrossShard stateAt smallIndexed statesS066 acrossS066 = true := by decide +kernel

theorem counts_S066 : statesS066.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
