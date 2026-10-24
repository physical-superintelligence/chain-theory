import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS058
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S058 : statesS058.all stateWithinBound = true := by decide +kernel

theorem closed_S058 : closedShard stateAt statesS058 stepsS058 = true := by decide +kernel

theorem across_S058 : acrossShard stateAt smallIndexed statesS058 acrossS058 = true := by decide +kernel

theorem counts_S058 : statesS058.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
