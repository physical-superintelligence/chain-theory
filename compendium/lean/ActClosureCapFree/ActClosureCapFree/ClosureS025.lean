import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS025
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S025 : statesS025.all stateWithinBound = true := by decide +kernel

theorem closed_S025 : closedShard stateAt statesS025 stepsS025 = true := by decide +kernel

theorem across_S025 : acrossShard stateAt smallIndexed statesS025 acrossS025 = true := by decide +kernel

theorem counts_S025 : statesS025.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
