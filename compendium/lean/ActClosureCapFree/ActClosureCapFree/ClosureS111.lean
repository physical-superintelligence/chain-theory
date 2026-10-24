import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS111
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S111 : statesS111.all stateWithinBound = true := by decide +kernel

theorem closed_S111 : closedShard stateAt statesS111 stepsS111 = true := by decide +kernel

theorem across_S111 : acrossShard stateAt smallIndexed statesS111 acrossS111 = true := by decide +kernel

theorem counts_S111 : statesS111.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
