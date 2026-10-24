import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS030
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S030 : statesS030.all stateWithinBound = true := by decide +kernel

theorem closed_S030 : closedShard stateAt statesS030 stepsS030 = true := by decide +kernel

theorem across_S030 : acrossShard stateAt smallIndexed statesS030 acrossS030 = true := by decide +kernel

theorem counts_S030 : statesS030.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
