import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS033
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S033 : statesS033.all stateWithinBound = true := by decide +kernel

theorem closed_S033 : closedShard stateAt statesS033 stepsS033 = true := by decide +kernel

theorem across_S033 : acrossShard stateAt smallIndexed statesS033 acrossS033 = true := by decide +kernel

theorem counts_S033 : statesS033.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
