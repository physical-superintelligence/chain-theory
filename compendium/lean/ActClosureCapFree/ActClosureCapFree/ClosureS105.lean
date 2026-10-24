import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS105
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S105 : statesS105.all stateWithinBound = true := by decide +kernel

theorem closed_S105 : closedShard stateAt statesS105 stepsS105 = true := by decide +kernel

theorem across_S105 : acrossShard stateAt smallIndexed statesS105 acrossS105 = true := by decide +kernel

theorem counts_S105 : statesS105.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
