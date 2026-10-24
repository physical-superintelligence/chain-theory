import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS068
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S068 : statesS068.all stateWithinBound = true := by decide +kernel

theorem closed_S068 : closedShard stateAt statesS068 stepsS068 = true := by decide +kernel

theorem across_S068 : acrossShard stateAt smallIndexed statesS068 acrossS068 = true := by decide +kernel

theorem counts_S068 : statesS068.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
