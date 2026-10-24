import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS085
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S085 : statesS085.all stateWithinBound = true := by decide +kernel

theorem closed_S085 : closedShard stateAt statesS085 stepsS085 = true := by decide +kernel

theorem across_S085 : acrossShard stateAt smallIndexed statesS085 acrossS085 = true := by decide +kernel

theorem counts_S085 : statesS085.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
