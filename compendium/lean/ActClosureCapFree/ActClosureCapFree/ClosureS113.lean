import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS113
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S113 : statesS113.all stateWithinBound = true := by decide +kernel

theorem closed_S113 : closedShard stateAt statesS113 stepsS113 = true := by decide +kernel

theorem across_S113 : acrossShard stateAt smallIndexed statesS113 acrossS113 = true := by decide +kernel

theorem counts_S113 : statesS113.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
