import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS010
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S010 : statesS010.all stateWithinBound = true := by decide +kernel

theorem closed_S010 : closedShard stateAt statesS010 stepsS010 = true := by decide +kernel

theorem across_S010 : acrossShard stateAt smallIndexed statesS010 acrossS010 = true := by decide +kernel

theorem counts_S010 : statesS010.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
