import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS126
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S126 : statesS126.all stateWithinBound = true := by decide +kernel

theorem closed_S126 : closedShard stateAt statesS126 stepsS126 = true := by decide +kernel

theorem across_S126 : acrossShard stateAt smallIndexed statesS126 acrossS126 = true := by decide +kernel

theorem counts_S126 : statesS126.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
