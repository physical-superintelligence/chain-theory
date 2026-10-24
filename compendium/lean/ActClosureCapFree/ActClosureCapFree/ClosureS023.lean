import ActClosureCapFree.Core
import ActClosureCapFree.Data.Index
import ActClosureCapFree.Data.Small
import ActClosureCapFree.Data.Caps
import ActClosureCapFree.Data.StepsS023
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem bound_S023 : statesS023.all stateWithinBound = true := by decide +kernel

theorem closed_S023 : closedShard stateAt statesS023 stepsS023 = true := by decide +kernel

theorem across_S023 : acrossShard stateAt smallIndexed statesS023 acrossS023 = true := by decide +kernel

theorem counts_S023 : statesS023.all (underCaps capsOfRecord) = true := by decide +kernel
end ActClosureCapFree
