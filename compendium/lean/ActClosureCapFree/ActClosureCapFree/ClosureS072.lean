import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS072
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S072 : statesS072.all stateWithinBound = true := by decide +kernel

theorem closed_S072 : closedShard stateAt statesS072 stepsS072 = true := by decide +kernel

theorem across_S072 : acrossShard stateAt smallIndexed statesS072 acrossS072 = true := by decide +kernel

theorem counts_S072 : statesS072.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
