import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS103
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S103 : statesS103.all stateWithinBound = true := by decide +kernel

theorem closed_S103 : closedShard stateAt statesS103 stepsS103 = true := by decide +kernel

theorem across_S103 : acrossShard stateAt smallIndexed statesS103 acrossS103 = true := by decide +kernel

theorem counts_S103 : statesS103.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
