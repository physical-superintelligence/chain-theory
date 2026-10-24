import ActClosure.Web
import ActClosure.Structure
import ActClosure.Data.Sinks
import ActClosure.Words

set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosure

def websOfRecord : List Web := sinksOfRecord.map (fun s => s.web) ++ aheadWebs

def worldsOfRecord : List AxiomDeclaration.World := websOfRecord.filterMap Web.toWorld? ++ [AxiomDeclaration.worldThree, AxiomDeclaration.worldOne]

def worldsAmongSinks : Nat := (sinksOfRecord.filter (fun s => s.web.isWorld)).length

def deltasRemet (a : Act) (w : Web) : Bool :=
  (a.instances w).all (fun p => let v := a.rewrite w p.1 p.2; siteDelta w v == a.sitesDelta && linkDelta w v == a.linksDelta && v.wellFormed)

def webAdmissionCensus : List (String × Nat) := actsOfRecord.map (fun a => (a.label, (websOfRecord.map (fun w => (a.instances w).length)).foldl (· + ·) 0))

def structureAdmissionCensus : List (String × Nat) := actsOfRecord.map (fun a => (a.label, (worldsOfRecord.map (fun w => (a.instancesWorld w).length)).foldl (· + ·) 0))

def actsAdmittedNowhereAtStructure : List String := (actsOfRecord.filter (fun a => worldsOfRecord.all (fun w => (a.instancesWorld w).isEmpty))).map (fun a => a.label)

def firstActRefusedAtStructure : String := actsAdmittedNowhereAtStructure.headD "NONE"

def actsAdmittedSomewhereAtWebs : Nat := (actsOfRecord.filter (fun a => websOfRecord.any (fun w => !(a.instances w).isEmpty))).length

end ActClosure
