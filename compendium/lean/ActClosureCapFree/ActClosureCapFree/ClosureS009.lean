import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS009
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S009 : statesS009.all stateWithinBound = true := by decide +kernel

theorem closed_S009 : closedShard stateAt statesS009 stepsS009 = true := by decide +kernel

theorem across_S009 : acrossShard stateAt smallIndexed statesS009 acrossS009 = true := by decide +kernel

theorem counts_S009 : statesS009.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
