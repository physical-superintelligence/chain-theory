import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS112
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S112 : statesS112.all stateWithinBound = true := by decide +kernel

theorem closed_S112 : closedShard stateAt statesS112 stepsS112 = true := by decide +kernel

theorem across_S112 : acrossShard stateAt smallIndexed statesS112 acrossS112 = true := by decide +kernel

theorem counts_S112 : statesS112.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
