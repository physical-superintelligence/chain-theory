import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS024
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S024 : statesS024.all stateWithinBound = true := by decide +kernel

theorem closed_S024 : closedShard stateAt statesS024 stepsS024 = true := by decide +kernel

theorem across_S024 : acrossShard stateAt smallIndexed statesS024 acrossS024 = true := by decide +kernel

theorem counts_S024 : statesS024.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
