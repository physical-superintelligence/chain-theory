import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS092
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S092 : statesS092.all stateWithinBound = true := by decide +kernel

theorem closed_S092 : closedShard stateAt statesS092 stepsS092 = true := by decide +kernel

theorem across_S092 : acrossShard stateAt smallIndexed statesS092 acrossS092 = true := by decide +kernel

theorem counts_S092 : statesS092.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
