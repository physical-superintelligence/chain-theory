import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS045
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S045 : statesS045.all stateWithinBound = true := by decide +kernel

theorem closed_S045 : closedShard stateAt statesS045 stepsS045 = true := by decide +kernel

theorem across_S045 : acrossShard stateAt smallIndexed statesS045 acrossS045 = true := by decide +kernel

theorem counts_S045 : statesS045.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
