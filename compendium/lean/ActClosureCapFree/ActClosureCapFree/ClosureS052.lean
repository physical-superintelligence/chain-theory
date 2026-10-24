import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS052
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S052 : statesS052.all stateWithinBound = true := by decide +kernel

theorem closed_S052 : closedShard stateAt statesS052 stepsS052 = true := by decide +kernel

theorem across_S052 : acrossShard stateAt smallIndexed statesS052 acrossS052 = true := by decide +kernel

theorem counts_S052 : statesS052.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
