import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS008
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S008 : statesS008.all stateWithinBound = true := by decide +kernel

theorem closed_S008 : closedShard stateAt statesS008 stepsS008 = true := by decide +kernel

theorem across_S008 : acrossShard stateAt smallIndexed statesS008 acrossS008 = true := by decide +kernel

theorem counts_S008 : statesS008.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
