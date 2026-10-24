import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS005
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S005 : statesS005.all stateWithinBound = true := by decide +kernel

theorem closed_S005 : closedShard stateAt statesS005 stepsS005 = true := by decide +kernel

theorem across_S005 : acrossShard stateAt smallIndexed statesS005 acrossS005 = true := by decide +kernel

theorem counts_S005 : statesS005.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
