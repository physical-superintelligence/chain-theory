import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS130
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S130 : statesS130.all stateWithinBound = true := by decide +kernel

theorem closed_S130 : closedShard stateAt statesS130 stepsS130 = true := by decide +kernel

theorem across_S130 : acrossShard stateAt smallIndexed statesS130 acrossS130 = true := by decide +kernel

theorem counts_S130 : statesS130.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
