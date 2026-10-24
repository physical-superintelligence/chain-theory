import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS089
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S089 : statesS089.all stateWithinBound = true := by decide +kernel

theorem closed_S089 : closedShard stateAt statesS089 stepsS089 = true := by decide +kernel

theorem across_S089 : acrossShard stateAt smallIndexed statesS089 acrossS089 = true := by decide +kernel

theorem counts_S089 : statesS089.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
