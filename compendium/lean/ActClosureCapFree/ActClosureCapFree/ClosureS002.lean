import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS002
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S002 : statesS002.all stateWithinBound = true := by decide +kernel

theorem closed_S002 : closedShard stateAt statesS002 stepsS002 = true := by decide +kernel

theorem across_S002 : acrossShard stateAt smallIndexed statesS002 acrossS002 = true := by decide +kernel

theorem counts_S002 : statesS002.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
