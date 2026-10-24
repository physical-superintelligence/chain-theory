import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS062
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S062 : statesS062.all stateWithinBound = true := by decide +kernel

theorem closed_S062 : closedShard stateAt statesS062 stepsS062 = true := by decide +kernel

theorem across_S062 : acrossShard stateAt smallIndexed statesS062 acrossS062 = true := by decide +kernel

theorem counts_S062 : statesS062.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
