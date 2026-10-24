import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS049
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S049 : statesS049.all stateWithinBound = true := by decide +kernel

theorem closed_S049 : closedShard stateAt statesS049 stepsS049 = true := by decide +kernel

theorem across_S049 : acrossShard stateAt smallIndexed statesS049 acrossS049 = true := by decide +kernel

theorem counts_S049 : statesS049.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
