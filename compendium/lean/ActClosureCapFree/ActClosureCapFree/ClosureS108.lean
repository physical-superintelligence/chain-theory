import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS108
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S108 : statesS108.all stateWithinBound = true := by decide +kernel

theorem closed_S108 : closedShard stateAt statesS108 stepsS108 = true := by decide +kernel

theorem across_S108 : acrossShard stateAt smallIndexed statesS108 acrossS108 = true := by decide +kernel

theorem counts_S108 : statesS108.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
