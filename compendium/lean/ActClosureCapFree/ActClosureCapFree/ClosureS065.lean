import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS065
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S065 : statesS065.all stateWithinBound = true := by decide +kernel

theorem closed_S065 : closedShard stateAt statesS065 stepsS065 = true := by decide +kernel

theorem across_S065 : acrossShard stateAt smallIndexed statesS065 acrossS065 = true := by decide +kernel

theorem counts_S065 : statesS065.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
