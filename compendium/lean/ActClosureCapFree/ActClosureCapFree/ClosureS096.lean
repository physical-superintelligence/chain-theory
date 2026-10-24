import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS096
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S096 : statesS096.all stateWithinBound = true := by decide +kernel

theorem closed_S096 : closedShard stateAt statesS096 stepsS096 = true := by decide +kernel

theorem across_S096 : acrossShard stateAt smallIndexed statesS096 acrossS096 = true := by decide +kernel

theorem counts_S096 : statesS096.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
