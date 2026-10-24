import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS076
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S076 : statesS076.all stateWithinBound = true := by decide +kernel

theorem closed_S076 : closedShard stateAt statesS076 stepsS076 = true := by decide +kernel

theorem across_S076 : acrossShard stateAt smallIndexed statesS076 acrossS076 = true := by decide +kernel

theorem counts_S076 : statesS076.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
