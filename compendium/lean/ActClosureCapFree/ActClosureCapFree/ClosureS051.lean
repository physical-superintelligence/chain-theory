import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS051
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S051 : statesS051.all stateWithinBound = true := by decide +kernel

theorem closed_S051 : closedShard stateAt statesS051 stepsS051 = true := by decide +kernel

theorem across_S051 : acrossShard stateAt smallIndexed statesS051 acrossS051 = true := by decide +kernel

theorem counts_S051 : statesS051.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
