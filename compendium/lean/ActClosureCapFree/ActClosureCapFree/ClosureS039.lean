import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS039
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S039 : statesS039.all stateWithinBound = true := by decide +kernel

theorem closed_S039 : closedShard stateAt statesS039 stepsS039 = true := by decide +kernel

theorem across_S039 : acrossShard stateAt smallIndexed statesS039 acrossS039 = true := by decide +kernel

theorem counts_S039 : statesS039.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
