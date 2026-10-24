import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS116
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S116 : statesS116.all stateWithinBound = true := by decide +kernel

theorem closed_S116 : closedShard stateAt statesS116 stepsS116 = true := by decide +kernel

theorem across_S116 : acrossShard stateAt smallIndexed statesS116 acrossS116 = true := by decide +kernel

theorem counts_S116 : statesS116.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
