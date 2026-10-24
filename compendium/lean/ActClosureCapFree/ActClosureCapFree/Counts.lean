import ActClosureCapFree.Closure
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree
open ActClosure (actsOfRecord Act Kind Dir)

theorem max_counts : maxCountsOver allStates = [6, 6, 8, 9, 9, 12] := by decide +kernel

theorem by_sites : bySites allStates = [0, 0, 6, 28, 145, 905, 6614] := by decide +kernel

theorem first_edition_states : oneDimensionCount allStates = 165 := by decide +kernel

theorem first_edition_max_counts : maxCountsOver (allStates.filter ActClosure.Web.oneDimension) = [6, 0, 0, 9, 0, 12] := by decide +kernel

def forwardSink (w : ActClosure.Web) : Bool := (actsOfRecord.filter (fun a => a.dir == Dir.forward && a.kind != Kind.joinAcross)).all (fun a => (a.instances w).isEmpty)

def forwardSinksCount : Nat := (allStates.filter forwardSink).length
end ActClosureCapFree
