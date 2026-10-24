import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS082
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S082 : statesS082.all stateWithinBound = true := by decide +kernel

theorem closed_S082 : closedShard stateAt statesS082 stepsS082 = true := by decide +kernel

theorem across_S082 : acrossShard stateAt smallIndexed statesS082 acrossS082 = true := by decide +kernel

theorem counts_S082 : statesS082.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
