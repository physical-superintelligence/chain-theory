import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS115
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S115 : statesS115.all stateWithinBound = true := by decide +kernel

theorem closed_S115 : closedShard stateAt statesS115 stepsS115 = true := by decide +kernel

theorem across_S115 : acrossShard stateAt smallIndexed statesS115 acrossS115 = true := by decide +kernel

theorem counts_S115 : statesS115.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
