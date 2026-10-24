import ActClosure.Web
import ActClosure.Structure
import ActClosure.Data.Acts
import AxiomDeclarationTwo.Structure
import AxiomDeclarationTwo.Acts

set_option autoImplicit false
set_option maxRecDepth 100000

namespace ChainTheory.Kernel.D527992_ESRL
open ActClosure (Web Act actsOfRecord sameMultiset)
open AxiomDeclarationTwo (WorldTwo webToWorldTwo? worldTwoToWeb actApplyTwo)

structure Step where
  label : String
  x : Nat
  y : Nat
deriving Repr, BEq, DecidableEq

def actOf (label : String) : Option Act := actsOfRecord.find? (fun a => a.label == label)

def capsOfRecord : List Nat := [96, 319, 906, 1036, 2053, 5100]

def webWithinCaps (w : Web) : Bool := (w.membership.zip capsOfRecord).all (fun p => p.1 ≤ p.2) && w.membership.length == capsOfRecord.length

def stateAdmitted (w : WorldTwo) : Bool := webWithinCaps (worldTwoToWeb w) && (worldTwoToWeb w).wellFormed

def stepTwo (w : WorldTwo) (s : Step) : Option WorldTwo :=
  match actOf s.label with
  | none => none
  | some a => match actApplyTwo a w s.x s.y with
    | none => none
    | some v => if stateAdmitted v then some v else none

def runTwo : List Step → Option WorldTwo → Option WorldTwo
  | [], st => st
  | s :: rest, st => runTwo rest (st.bind (fun w => stepTwo w s))

def genreLink (g : Nat × Nat) : Web := ⟨[g.1, g.2], [(0, 1)]⟩

def seedTwo (g : Nat × Nat) : Option WorldTwo := (webToWorldTwo? (genreLink g)).bind (fun w => if stateAdmitted w then some w else none)

def normLink (l : Nat × Nat) : Nat × Nat := if l.1 ≤ l.2 then l else (l.2, l.1)

def isPermutation (w : Web) (perm : List Nat) : Bool := perm.length == w.sites && (List.range w.sites).all (fun i => perm.contains i)

def matchesTarget (built target : Web) (perm : List Nat) : Bool :=
  isPermutation built perm && target.dims == perm.map (fun i => built.dimOf i) && target.links.length == built.links.length
  && sameMultiset (target.links.map (fun l => normLink (perm.getD l.1 0, perm.getD l.2 0))) (built.links.map normLink)

structure Body where
  ladder : String
  name : String
  seed : Nat × Nat
  steps : List Step
  sites : List String
  perm : List Nat
  target : Option Web

def stepsElectron : List Step := [⟨"A04", 0, 3⟩, ⟨"J04", 2, 1⟩, ⟨"A05", 0, 4⟩, ⟨"A02", 1, 2⟩, ⟨"A02", 2, 2⟩, ⟨"A03", 3, 2⟩, ⟨"A03", 3, 2⟩, ⟨"J01", 7, 6⟩, ⟨"A03", 3, 2⟩]

def stepsKitMuon : List Step := [⟨"A04", 0, 3⟩, ⟨"J04", 2, 1⟩, ⟨"A05", 0, 4⟩, ⟨"A05", 1, 4⟩, ⟨"A02", 2, 2⟩, ⟨"A03", 3, 2⟩, ⟨"A03", 3, 2⟩, ⟨"J01", 7, 6⟩, ⟨"A03", 3, 2⟩, ⟨"A03", 4, 2⟩, ⟨"A03", 4, 2⟩, ⟨"J01", 10, 9⟩, ⟨"A03", 4, 2⟩, ⟨"A01", 11, 2⟩]

def stepsKitTau : List Step := [⟨"A04", 0, 3⟩, ⟨"J04", 2, 1⟩, ⟨"A05", 0, 4⟩, ⟨"A05", 1, 4⟩, ⟨"A05", 2, 4⟩, ⟨"A03", 3, 2⟩, ⟨"A03", 3, 2⟩, ⟨"J01", 7, 6⟩, ⟨"A03", 3, 2⟩, ⟨"A03", 4, 2⟩, ⟨"A03", 4, 2⟩, ⟨"J01", 10, 9⟩, ⟨"A03", 4, 2⟩, ⟨"A03", 5, 2⟩, ⟨"A03", 5, 2⟩, ⟨"J01", 13, 12⟩, ⟨"A03", 5, 2⟩, ⟨"A01", 11, 2⟩, ⟨"A01", 14, 2⟩]

def hubStep (leaf next : Nat) : List Step := [⟨"A03", leaf, 4⟩, ⟨"A03", next, 2⟩, ⟨"A03", next, 2⟩, ⟨"A03", next, 2⟩, ⟨"J01", next + 2, next + 1⟩]

def stepsDerivedMuon : List Step := stepsElectron ++ hubStep 8 9

def stepsDerivedTau : List Step := stepsDerivedMuon ++ hubStep 12 13

def kitElectron : Web := ⟨[3, 3, 3, 4, 2, 2, 2, 2, 2], [(0, 1), (1, 2), (0, 2), (3, 0), (3, 4), (3, 5), (3, 6), (4, 5), (1, 7), (2, 8)]⟩

def kitMuon : Web := ⟨[3, 3, 3, 4, 4, 2, 2, 2, 2, 2, 2, 2, 2], [(0, 1), (1, 2), (0, 2), (3, 0), (3, 5), (3, 6), (3, 7), (5, 6), (4, 1), (4, 8), (4, 9), (4, 10), (8, 9), (12, 2), (11, 10)]⟩

def kitTau : Web := ⟨[3, 3, 3, 4, 4, 4, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2, 2], [(0, 1), (1, 2), (0, 2), (3, 0), (3, 6), (3, 7), (3, 8), (6, 7), (4, 1), (4, 9), (4, 10), (4, 11), (9, 10), (5, 2), (5, 12), (5, 13), (5, 14), (12, 13), (15, 11), (16, 14)]⟩

def sitesElectron : List String := ["A", "B", "C", "H", "a1", "a2", "a3", "w1", "w2"]

def bodies : List Body := [
  ⟨"KIT", "E_TWODOCK", (3, 3), stepsElectron, sitesElectron, [0, 1, 2, 3, 6, 7, 8, 4, 5], some kitElectron⟩,
  ⟨"KIT", "T6-MU-LEAF", (3, 3), stepsKitMuon, ["A", "B", "C", "H", "H2", "a1", "a2", "a3", "b1", "b2", "b3", "w1", "w2"], [0, 1, 2, 3, 4, 6, 7, 8, 9, 10, 11, 12, 5], some kitMuon⟩,
  ⟨"KIT", "T6-TAU-LL", (3, 3), stepsKitTau, ["A", "B", "C", "H", "H2", "H3", "a1", "a2", "a3", "b1", "b2", "b3", "c1", "c2", "c3", "w1", "w2"], [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16], some kitTau⟩,
  ⟨"DERIVED", "T6-MU-LEAF", (3, 3), stepsDerivedMuon, sitesElectron ++ ["K", "k1", "k2", "k3"], [0, 1, 2, 3, 6, 7, 8, 4, 5, 9, 10, 11, 12], none⟩,
  ⟨"DERIVED", "T6-TAU-LL", (3, 3), stepsDerivedTau, sitesElectron ++ ["K", "k1", "k2", "k3", "M", "m1", "m2", "m3"], [0, 1, 2, 3, 6, 7, 8, 4, 5, 9, 10, 11, 12, 13, 14, 15, 16], none⟩
]

def Body.built (b : Body) : Web := match runTwo b.steps (seedTwo b.seed) with
  | some w => worldTwoToWeb w
  | none => ⟨[], []⟩

def Body.certified (b : Body) : Bool := (runTwo b.steps (seedTwo b.seed)).isSome

def Body.matchesKit (b : Body) : Bool := match b.target with
  | some t => matchesTarget b.built t b.perm
  | none => true

def openAt (w : Web) (i : Nat) : Bool := w.links.any (fun l => (l.1 == i && w.dimOf i < w.dimOf l.2) || (l.2 == i && w.dimOf i < w.dimOf l.1))

structure Row where
  ladder : String
  body : String
  site : String
  c_open : String
deriving Repr, BEq, DecidableEq

def Body.rows (b : Body) : List Row :=
  (b.sites.zip b.perm).map (fun p => ⟨b.ladder, b.name, p.1, if openAt b.built p.2 then "YES" else "NO"⟩)

def rows : List Row := bodies.flatMap Body.rows

def recordRows : List Row := [
  { ladder := "KIT", body := "E_TWODOCK", site := "A", c_open := "YES" },
  { ladder := "KIT", body := "E_TWODOCK", site := "B", c_open := "NO" },
  { ladder := "KIT", body := "E_TWODOCK", site := "C", c_open := "NO" },
  { ladder := "KIT", body := "E_TWODOCK", site := "H", c_open := "NO" },
  { ladder := "KIT", body := "E_TWODOCK", site := "a1", c_open := "YES" },
  { ladder := "KIT", body := "E_TWODOCK", site := "a2", c_open := "YES" },
  { ladder := "KIT", body := "E_TWODOCK", site := "a3", c_open := "YES" },
  { ladder := "KIT", body := "E_TWODOCK", site := "w1", c_open := "YES" },
  { ladder := "KIT", body := "E_TWODOCK", site := "w2", c_open := "YES" },
  { ladder := "KIT", body := "T6-MU-LEAF", site := "A", c_open := "YES" },
  { ladder := "KIT", body := "T6-MU-LEAF", site := "B", c_open := "YES" },
  { ladder := "KIT", body := "T6-MU-LEAF", site := "C", c_open := "NO" },
  { ladder := "KIT", body := "T6-MU-LEAF", site := "H", c_open := "NO" },
  { ladder := "KIT", body := "T6-MU-LEAF", site := "H2", c_open := "NO" },
  { ladder := "KIT", body := "T6-MU-LEAF", site := "a1", c_open := "YES" },
  { ladder := "KIT", body := "T6-MU-LEAF", site := "a2", c_open := "YES" },
  { ladder := "KIT", body := "T6-MU-LEAF", site := "a3", c_open := "YES" },
  { ladder := "KIT", body := "T6-MU-LEAF", site := "b1", c_open := "YES" },
  { ladder := "KIT", body := "T6-MU-LEAF", site := "b2", c_open := "YES" },
  { ladder := "KIT", body := "T6-MU-LEAF", site := "b3", c_open := "YES" },
  { ladder := "KIT", body := "T6-MU-LEAF", site := "w1", c_open := "NO" },
  { ladder := "KIT", body := "T6-MU-LEAF", site := "w2", c_open := "YES" },
  { ladder := "KIT", body := "T6-TAU-LL", site := "A", c_open := "YES" },
  { ladder := "KIT", body := "T6-TAU-LL", site := "B", c_open := "YES" },
  { ladder := "KIT", body := "T6-TAU-LL", site := "C", c_open := "YES" },
  { ladder := "KIT", body := "T6-TAU-LL", site := "H", c_open := "NO" },
  { ladder := "KIT", body := "T6-TAU-LL", site := "H2", c_open := "NO" },
  { ladder := "KIT", body := "T6-TAU-LL", site := "H3", c_open := "NO" },
  { ladder := "KIT", body := "T6-TAU-LL", site := "a1", c_open := "YES" },
  { ladder := "KIT", body := "T6-TAU-LL", site := "a2", c_open := "YES" },
  { ladder := "KIT", body := "T6-TAU-LL", site := "a3", c_open := "YES" },
  { ladder := "KIT", body := "T6-TAU-LL", site := "b1", c_open := "YES" },
  { ladder := "KIT", body := "T6-TAU-LL", site := "b2", c_open := "YES" },
  { ladder := "KIT", body := "T6-TAU-LL", site := "b3", c_open := "YES" },
  { ladder := "KIT", body := "T6-TAU-LL", site := "c1", c_open := "YES" },
  { ladder := "KIT", body := "T6-TAU-LL", site := "c2", c_open := "YES" },
  { ladder := "KIT", body := "T6-TAU-LL", site := "c3", c_open := "YES" },
  { ladder := "KIT", body := "T6-TAU-LL", site := "w1", c_open := "NO" },
  { ladder := "KIT", body := "T6-TAU-LL", site := "w2", c_open := "NO" },
  { ladder := "DERIVED", body := "T6-MU-LEAF", site := "A", c_open := "YES" },
  { ladder := "DERIVED", body := "T6-MU-LEAF", site := "B", c_open := "NO" },
  { ladder := "DERIVED", body := "T6-MU-LEAF", site := "C", c_open := "NO" },
  { ladder := "DERIVED", body := "T6-MU-LEAF", site := "H", c_open := "NO" },
  { ladder := "DERIVED", body := "T6-MU-LEAF", site := "a1", c_open := "YES" },
  { ladder := "DERIVED", body := "T6-MU-LEAF", site := "a2", c_open := "YES" },
  { ladder := "DERIVED", body := "T6-MU-LEAF", site := "a3", c_open := "YES" },
  { ladder := "DERIVED", body := "T6-MU-LEAF", site := "w1", c_open := "YES" },
  { ladder := "DERIVED", body := "T6-MU-LEAF", site := "w2", c_open := "YES" },
  { ladder := "DERIVED", body := "T6-MU-LEAF", site := "K", c_open := "NO" },
  { ladder := "DERIVED", body := "T6-MU-LEAF", site := "k1", c_open := "YES" },
  { ladder := "DERIVED", body := "T6-MU-LEAF", site := "k2", c_open := "YES" },
  { ladder := "DERIVED", body := "T6-MU-LEAF", site := "k3", c_open := "YES" },
  { ladder := "DERIVED", body := "T6-TAU-LL", site := "A", c_open := "YES" },
  { ladder := "DERIVED", body := "T6-TAU-LL", site := "B", c_open := "NO" },
  { ladder := "DERIVED", body := "T6-TAU-LL", site := "C", c_open := "NO" },
  { ladder := "DERIVED", body := "T6-TAU-LL", site := "H", c_open := "NO" },
  { ladder := "DERIVED", body := "T6-TAU-LL", site := "a1", c_open := "YES" },
  { ladder := "DERIVED", body := "T6-TAU-LL", site := "a2", c_open := "YES" },
  { ladder := "DERIVED", body := "T6-TAU-LL", site := "a3", c_open := "YES" },
  { ladder := "DERIVED", body := "T6-TAU-LL", site := "w1", c_open := "YES" },
  { ladder := "DERIVED", body := "T6-TAU-LL", site := "w2", c_open := "YES" },
  { ladder := "DERIVED", body := "T6-TAU-LL", site := "K", c_open := "NO" },
  { ladder := "DERIVED", body := "T6-TAU-LL", site := "k1", c_open := "YES" },
  { ladder := "DERIVED", body := "T6-TAU-LL", site := "k2", c_open := "YES" },
  { ladder := "DERIVED", body := "T6-TAU-LL", site := "k3", c_open := "YES" },
  { ladder := "DERIVED", body := "T6-TAU-LL", site := "M", c_open := "NO" },
  { ladder := "DERIVED", body := "T6-TAU-LL", site := "m1", c_open := "YES" },
  { ladder := "DERIVED", body := "T6-TAU-LL", site := "m2", c_open := "YES" },
  { ladder := "DERIVED", body := "T6-TAU-LL", site := "m3", c_open := "YES" }
]

theorem bodies_certified : bodies.all Body.certified = true := by decide +kernel

theorem kit_bodies_match : bodies.all Body.matchesKit = true := by decide +kernel

theorem derived_bodies_counts : (bodies.map (fun b => (b.built.sites, b.built.links.length, b.built.wellFormed))) = [(9, 10, true), (13, 15, true), (17, 20, true), (13, 15, true), (17, 20, true)] := by decide +kernel

theorem rows_eq_record : rows = recordRows := by decide +kernel

theorem check_1 : rows.length = 69 := by decide +kernel

theorem check_2 : (rows.filter (fun r => r.c_open == "YES")).length = 48 := by decide +kernel

theorem check_3 : (rows.filter (fun r => r.c_open == "NO")).length = 21 := by decide +kernel

theorem check_4 : (rows.filter (fun r => r.ladder == "KIT" && r.body == "E_TWODOCK" && r.c_open == "YES")).length = 6 := by decide +kernel

theorem check_5 : (rows.filter (fun r => r.ladder == "KIT" && r.body == "T6-MU-LEAF" && r.c_open == "YES")).length = 9 := by decide +kernel

theorem check_6 : (rows.filter (fun r => r.ladder == "KIT" && r.body == "T6-TAU-LL" && r.c_open == "YES")).length = 12 := by decide +kernel

theorem check_7 : (rows.filter (fun r => r.ladder == "KIT")).length = 39 := by decide +kernel

theorem check_8 : (rows.filter (fun r => r.ladder == "DERIVED")).length = 30 := by decide +kernel

theorem checks :
    (rows.length = 69) /\
    ((rows.filter (fun r => r.c_open == "YES")).length = 48) /\
    ((rows.filter (fun r => r.c_open == "NO")).length = 21) /\
    ((rows.filter (fun r => r.ladder == "KIT" && r.body == "E_TWODOCK" && r.c_open == "YES")).length = 6) /\
    ((rows.filter (fun r => r.ladder == "KIT" && r.body == "T6-MU-LEAF" && r.c_open == "YES")).length = 9) /\
    ((rows.filter (fun r => r.ladder == "KIT" && r.body == "T6-TAU-LL" && r.c_open == "YES")).length = 12) /\
    ((rows.filter (fun r => r.ladder == "KIT")).length = 39) /\
    ((rows.filter (fun r => r.ladder == "DERIVED")).length = 30) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (check_8)))))))

end ChainTheory.Kernel.D527992_ESRL
