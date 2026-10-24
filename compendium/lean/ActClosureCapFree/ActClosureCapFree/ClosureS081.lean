import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS081
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S081 : statesS081.all stateWithinBound = true := by decide +kernel

theorem closed_S081 : closedShard stateAt statesS081 stepsS081 = true := by decide +kernel

theorem across_S081 : acrossShard stateAt smallIndexed statesS081 acrossS081 = true := by decide +kernel

theorem counts_S081 : statesS081.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
