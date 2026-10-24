import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS021
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S021 : statesS021.all stateWithinBound = true := by decide +kernel

theorem closed_S021 : closedShard stateAt statesS021 stepsS021 = true := by decide +kernel

theorem across_S021 : acrossShard stateAt smallIndexed statesS021 acrossS021 = true := by decide +kernel

theorem counts_S021 : statesS021.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
