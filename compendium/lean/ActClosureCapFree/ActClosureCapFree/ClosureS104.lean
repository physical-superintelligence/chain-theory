import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS104
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S104 : statesS104.all stateWithinBound = true := by decide +kernel

theorem closed_S104 : closedShard stateAt statesS104 stepsS104 = true := by decide +kernel

theorem across_S104 : acrossShard stateAt smallIndexed statesS104 acrossS104 = true := by decide +kernel

theorem counts_S104 : statesS104.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
