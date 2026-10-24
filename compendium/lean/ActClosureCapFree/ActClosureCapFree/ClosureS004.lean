import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS004
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S004 : statesS004.all stateWithinBound = true := by decide +kernel

theorem closed_S004 : closedShard stateAt statesS004 stepsS004 = true := by decide +kernel

theorem across_S004 : acrossShard stateAt smallIndexed statesS004 acrossS004 = true := by decide +kernel

theorem counts_S004 : statesS004.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
