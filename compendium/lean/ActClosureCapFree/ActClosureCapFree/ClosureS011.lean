import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS011
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S011 : statesS011.all stateWithinBound = true := by decide +kernel

theorem closed_S011 : closedShard stateAt statesS011 stepsS011 = true := by decide +kernel

theorem across_S011 : acrossShard stateAt smallIndexed statesS011 acrossS011 = true := by decide +kernel

theorem counts_S011 : statesS011.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
