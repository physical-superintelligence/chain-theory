import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS043
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S043 : statesS043.all stateWithinBound = true := by decide +kernel

theorem closed_S043 : closedShard stateAt statesS043 stepsS043 = true := by decide +kernel

theorem across_S043 : acrossShard stateAt smallIndexed statesS043 acrossS043 = true := by decide +kernel

theorem counts_S043 : statesS043.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
