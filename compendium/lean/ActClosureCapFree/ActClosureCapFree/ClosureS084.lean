import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS084
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S084 : statesS084.all stateWithinBound = true := by decide +kernel

theorem closed_S084 : closedShard stateAt statesS084 stepsS084 = true := by decide +kernel

theorem across_S084 : acrossShard stateAt smallIndexed statesS084 acrossS084 = true := by decide +kernel

theorem counts_S084 : statesS084.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
