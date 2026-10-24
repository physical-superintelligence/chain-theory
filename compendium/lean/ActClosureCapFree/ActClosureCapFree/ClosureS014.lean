import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS014
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S014 : statesS014.all stateWithinBound = true := by decide +kernel

theorem closed_S014 : closedShard stateAt statesS014 stepsS014 = true := by decide +kernel

theorem across_S014 : acrossShard stateAt smallIndexed statesS014 acrossS014 = true := by decide +kernel

theorem counts_S014 : statesS014.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
