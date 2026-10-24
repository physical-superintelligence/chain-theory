import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS057
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S057 : statesS057.all stateWithinBound = true := by decide +kernel

theorem closed_S057 : closedShard stateAt statesS057 stepsS057 = true := by decide +kernel

theorem across_S057 : acrossShard stateAt smallIndexed statesS057 acrossS057 = true := by decide +kernel

theorem counts_S057 : statesS057.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
