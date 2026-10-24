import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS007
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S007 : statesS007.all stateWithinBound = true := by decide +kernel

theorem closed_S007 : closedShard stateAt statesS007 stepsS007 = true := by decide +kernel

theorem across_S007 : acrossShard stateAt smallIndexed statesS007 acrossS007 = true := by decide +kernel

theorem counts_S007 : statesS007.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
