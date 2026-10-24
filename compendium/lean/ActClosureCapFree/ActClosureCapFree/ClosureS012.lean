import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS012
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S012 : statesS012.all stateWithinBound = true := by decide +kernel

theorem closed_S012 : closedShard stateAt statesS012 stepsS012 = true := by decide +kernel

theorem across_S012 : acrossShard stateAt smallIndexed statesS012 acrossS012 = true := by decide +kernel

theorem counts_S012 : statesS012.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
