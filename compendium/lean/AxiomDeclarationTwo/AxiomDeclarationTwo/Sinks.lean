import ActClosure.Sinks
import AxiomDeclarationTwo.Words

set_option autoImplicit false
set_option maxRecDepth 100000

namespace AxiomDeclarationTwo
open ActClosure (Web Act actsOfRecord unequalActs equalActs sinksOfRecord websOfRecord aheadWebs webAdmissionCensus siteDelta linkDelta)
open AxiomDeclaration (worldThree worldOne)

def recordWorldsTwo : List WorldTwo := websOfRecord.filterMap webToWorldTwo?

def exampleWorldsTwo : List WorldTwo := [ofWorld worldThree, ofWorld worldOne, worldTwoThree, worldTwoHub, worldTwoSix]

def worldsOfRecordTwo : List WorldTwo := recordWorldsTwo ++ exampleWorldsTwo

def worldsTwoAmongRecord : Nat := recordWorldsTwo.length

def worldsTwoAmongSinks : Nat := (sinksOfRecord.filterMap (fun s => webToWorldTwo? s.web)).length

def firstEditionAmongSinks : Nat × Nat := ((sinksOfRecord.filter (fun s => s.web.isWorld)).length, worldsTwoAmongSinks)

def structureTwoAdmissionCensus : List (String × Nat) := actsOfRecord.map (fun a => (a.label, (recordWorldsTwo.map (fun w => (actInstancesTwo a w).length)).foldl (· + ·) 0))

def censusTwoEqualsWeb : Bool := structureTwoAdmissionCensus == webAdmissionCensus

def actsAdmittedNowhereAtTwo : List String := (actsOfRecord.filter (fun a => worldsOfRecordTwo.all (fun w => (actInstancesTwo a w).isEmpty))).map (fun a => a.label)

def firstActNowhereAtTwo : String := actsAdmittedNowhereAtTwo.headD "NONE"

def actsAdmittedSomewhereAtTwo : Nat := (actsOfRecord.filter (fun a => worldsOfRecordTwo.any (fun w => !(actInstancesTwo a w).isEmpty))).length

def unequalSomewhereAtTwo : Nat := (unequalActs.filter (fun a => worldsOfRecordTwo.any (fun w => !(actInstancesTwo a w).isEmpty))).length

def equalSomewhereAtTwo : Nat := (equalActs.filter (fun a => worldsOfRecordTwo.any (fun w => !(actInstancesTwo a w).isEmpty))).length

def closureTwoAt (a : Act) (w : WorldTwo) : Bool :=
  (actInstancesTwo a w).all (fun p => match actApplyTwo a w p.1 p.2 with
    | none => false
    | some v => v.pairs.all (pairAdmittedTwo v.dim) && (worldTwoToWeb v).wellFormed && siteDelta (worldTwoToWeb w) (worldTwoToWeb v) == a.sitesDelta && linkDelta (worldTwoToWeb w) (worldTwoToWeb v) == a.linksDelta)

def closureTwoOver (ws : List WorldTwo) : Bool := ws.all (fun w => actsOfRecord.all (fun a => closureTwoAt a w))

end AxiomDeclarationTwo
