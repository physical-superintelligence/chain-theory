import ActClosure.Web
import ActClosure.Structure
import ActClosure.Data.Acts
import AxiomDeclarationTwo.Structure

set_option autoImplicit false
set_option maxRecDepth 100000

namespace AxiomDeclarationTwo
open ActClosure (Web Act Kind Dir actsOfRecord unequalActs equalActs)
open AxiomDeclaration (Pair finList World)

def worldTwoToWeb (w : WorldTwo) : Web := ⟨(finList w.qudits).map w.dim, w.pairs.map (fun p => (p.a.val, p.b.val))⟩

def webToWorldTwo? (w : Web) : Option WorldTwo :=
  if h : (w.pairsOf.all (pairAdmittedTwo w.dimFn)) = true then some ⟨w.sites, w.dimFn, w.pairsOf, h⟩ else none

def isWorldTwo (w : Web) : Bool := (webToWorldTwo? w).isSome

def actApplyTwo (a : Act) (w : WorldTwo) (x y : Nat) : Option WorldTwo := (a.apply (worldTwoToWeb w) x y).bind webToWorldTwo?

def actAdmittedTwo (a : Act) (w : WorldTwo) (x y : Nat) : Bool := (actApplyTwo a w x y).isSome

def actInstancesTwo (a : Act) (w : WorldTwo) : List (Nat × Nat) := (a.args (worldTwoToWeb w)).filter (fun p => actAdmittedTwo a w p.1 p.2)

def actWitness (a : Act) : Option WorldTwo × Nat × Nat :=
  let d1 := a.genre.1
  let d2 := a.genre.2
  let t : Web × Nat × Nat := match a.kind, a.dir with
    | .attach, .forward => (⟨[d1, d1], [(0, 1)]⟩, 0, d2)
    | .attach, .inverse => (⟨[d1, d1, d2], [(0, 1), (0, 2)]⟩, 0, 2)
    | .joinWithin, .forward => (⟨[d1, d2, 2], [(0, 2), (1, 2)]⟩, 0, 1)
    | .joinWithin, .inverse => (⟨[d1, d2, 2], [(0, 1), (0, 2), (1, 2)]⟩, 0, 1)
    | .joinAcross, .forward => (⟨[d1, d1, d2, d2], [(0, 1), (2, 3)]⟩, 0, 2)
    | .joinAcross, .inverse => (⟨[d1, d2, d1, d2], [(0, 1), (0, 2), (1, 3)]⟩, 0, 1)
    | .hubForm, .forward => (⟨[2, 2, 2, 2], [(0, 1), (0, 2), (1, 3)]⟩, 0, 1)
    | .hubForm, .inverse => (⟨[4, 2], [(0, 1)]⟩, 0, 0)
  (webToWorldTwo? t.fst, t.snd.fst, t.snd.snd)

def admittedAtWitness (a : Act) : Bool :=
  match actWitness a with
  | (some w, x, y) => actAdmittedTwo a w x y
  | (none, _, _) => false

def witnessIsWorldTwo (a : Act) : Bool := (actWitness a).fst.isSome

def witnessBeyond (a : Act) : Option WorldTwo :=
  match actWitness a with
  | (some w, x, y) => actApplyTwo a w x y
  | (none, _, _) => none

def witnessCensus : List (String × Bool) := actsOfRecord.map (fun a => (a.label, admittedAtWitness a))

def firstActAtNoWitness : String := ((actsOfRecord.find? (fun a => !(admittedAtWitness a))).map (fun a => a.label)).getD "NONE"

def unequalAtWitness : Nat := (unequalActs.filter admittedAtWitness).length

def equalAtWitness : Nat := (equalActs.filter admittedAtWitness).length

def witnessGenreRemet (a : Act) : Bool :=
  match a.kind, a.dir, witnessBeyond a, (actWitness a).fst with
  | .hubForm, .forward, _, some w => w.genres.contains a.genre
  | .hubForm, .inverse, some v, _ => v.genres.contains a.genre
  | _, .forward, some v, _ => v.genres.contains a.genre
  | _, .inverse, _, some w => w.genres.contains a.genre
  | _, _, _, _ => false

def witnessDeltasRemet (a : Act) : Bool :=
  match actWitness a, witnessBeyond a with
  | (some w, _, _), some v => ActClosure.siteDelta (worldTwoToWeb w) (worldTwoToWeb v) == a.sitesDelta && ActClosure.linkDelta (worldTwoToWeb w) (worldTwoToWeb v) == a.linksDelta
  | _, _ => false

end AxiomDeclarationTwo
