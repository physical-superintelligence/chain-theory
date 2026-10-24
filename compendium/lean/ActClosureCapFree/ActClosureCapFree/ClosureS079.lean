import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS079
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S079 : statesS079.all stateWithinBound = true := by decide +kernel

theorem closed_S079 : closedShard stateAt statesS079 stepsS079 = true := by decide +kernel

theorem across_S079 : acrossShard stateAt smallIndexed statesS079 acrossS079 = true := by decide +kernel

theorem counts_S079 : statesS079.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
