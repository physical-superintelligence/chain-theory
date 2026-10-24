import AlphaDerivation.Data.GaussMatrix
import AlphaDerivation.Data.Records
import AlphaDerivation.Data.Webs
import AlphaDerivation.Data.Expected
import AlphaDerivation.Proofs.LemmaA

set_option maxRecDepth 100000

namespace AlphaDerivation
namespace OrbitReading
open GM

def centreSlot (s : Nat) : Bool := s % 2 == 0

def slotDim (s : Nat) : Nat := if centreSlot s then 3 else 2

def swapSlot (s : Nat) : Nat := (s + 2) % 4

def swapLetter (l : Letter) : Letter := ⟨l.name, swapSlot l.slot⟩

def letterIndex (l : Letter) : Nat := if centreSlot l.slot then centreLetters.idxOf l.name else farLetters.idxOf l.name

def letterCode (l : Letter) : Nat := l.slot * 16 + letterIndex l

def normPair (x y : Letter) : Letter × Letter := if x.slot ≤ y.slot then (x, y) else (y, x)

def labelCode (p : Letter × Letter) : Nat := letterCode p.1 * 64 + letterCode p.2

def swapPair (p : Letter × Letter) : Letter × Letter := normPair (swapLetter p.1) (swapLetter p.2)

def lettersAt (s : Nat) : List Letter := (if centreSlot s then centreLetters else farLetters).map fun n => ⟨n, s⟩

def allLabels : List (Letter × Letter) :=
  (List.range 4).flatMap fun i => (List.range 4).flatMap fun j =>
    if i < j then (lettersAt i).flatMap fun x => (lettersAt j).map fun y => (x, y) else []

def insert (x : Nat) : List Nat → List Nat
  | [] => [x]
  | y :: ys => if x ≤ y then x :: y :: ys else y :: insert x ys

def sort : List Nat → List Nat
  | [] => []
  | x :: xs => insert x (sort xs)

def label (w : Web) : Letter × Letter := match w.terms with
  | t :: _ => normPair t.2.1 t.2.2
  | [] => (⟨"", 0⟩, ⟨"", 0⟩)

def isOrbitWeb (sign : Int) (w : Web) : Bool := match w.terms with
  | [t1, t2] => t1.1 == 1 && t2.1 == sign && normPair t2.2.1 t2.2.2 == swapPair (normPair t1.2.1 t1.2.2) && swapPair (normPair t1.2.1 t1.2.2) != normPair t1.2.1 t1.2.2
  | _ => false

def isFixedWeb (w : Web) : Bool := match w.terms with
  | [t] => t.1 == 1 && swapPair (normPair t.2.1 t.2.2) == normPair t.2.1 t.2.2
  | _ => false

def isCommutatorWeb (w : Web) : Bool := match w.terms with
  | [t1, t2] => t1.1 == 1 && t2.1 == -1 && t1.2.1.slot == 1 && t1.2.2.slot == 1 && t2.2.1 == t1.2.2 && t2.2.2 == t1.2.1 && t1.2.1 != t1.2.2
  | _ => false

def typingOK (w : Web) (r : Rec) : Bool :=
  w.id == r.id && w.build == r.build &&
  (match w.build with
    | .oddOrbit => r.parity == .odd && r.degree == 2 && isOrbitWeb (-1) w && (r.kinds == (if centreSlot (label w).1.slot == centreSlot (label w).2.slot then .same else .mixed))
    | .evenOrbit => r.parity == .even && r.degree == 2 && isOrbitWeb 1 w && (r.kinds == (if centreSlot (label w).1.slot == centreSlot (label w).2.slot then .same else .mixed))
    | .fixed => r.parity == .even && r.degree == 2 && isFixedWeb w && r.kinds == .same
    | .reentry => r.parity == .neither && r.degree == 1 && isCommutatorWeb w && r.kinds == .closure)

def websOf (b : Build) : List Web := webs.filter fun w => w.build == b

def letterMatrix (d k : Nat) : GM :=
  let sym := fun a b => add (unit d a b) (unit d b a)
  let anti := fun a b => smul G.iu (sub (unit d a b) (unit d b a))
  if d == 3 then
    [sym 0 1, sym 0 2, sym 1 2, anti 0 1, anti 0 2, anti 1 2,
     mk 3 (fun i j => if i == j then (if i == 0 then G.one else if i == 1 then G.ofInt (-1) else G.zero) else G.zero),
     mk 3 (fun i j => if i == j then (if i < 2 then G.one else G.ofInt (-2)) else G.zero)].getD k (zeroM 3)
  else [sym 0 1, anti 0 1, mk 2 (fun i j => if i == j then (if i == 0 then G.one else G.ofInt (-1)) else G.zero)].getD k (zeroM 2)

def actOn (u3 u2 : GM) (l : Letter) : GM :=
  let d := slotDim l.slot
  let m := letterMatrix d (letterIndex l)
  let u := if centreSlot l.slot then u3 else u2
  let g := if l.slot < 2 then u else conj u
  mulN d (mulN d g m) (adjoint d g)

def termMatrix (u3 u2 : GM) (t : Int × Letter × Letter) : GM :=
  smul (G.ofInt t.1) (kron (slotDim t.2.1.slot) (slotDim t.2.2.slot) (actOn u3 u2 t.2.1) (actOn u3 u2 t.2.2))

def webMatrix (u3 u2 : GM) (w : Web) : GM :=
  match w.terms with
  | [] => []
  | t :: ts => ts.foldl (fun acc t' => add acc (termMatrix u3 u2 t')) (termMatrix u3 u2 t)

def fixedUnder (u3 u2 : GM) (w : Web) : Bool := webMatrix u3 u2 w == webMatrix (identity 3) (identity 2) w

theorem orbit_reading :
    webs.length = Expected.recordCount ∧ webs.map Web.id = records.map Rec.id ∧
    (websOf .oddOrbit).length = Expected.orbitRecords ∧ (websOf .evenOrbit).length = Expected.orbitRecords ∧
    (websOf .fixed).length = Expected.fixedRecords ∧ (websOf .reentry).length = Expected.reentryCount ∧
    2 * Expected.orbitRecords + Expected.fixedRecords + Expected.reentryCount = Expected.recordCount ∧
    allLabels.length = Expected.rosterCount ∧
    (websOf .oddOrbit).all (isOrbitWeb (-1)) = true ∧ (websOf .evenOrbit).all (isOrbitWeb 1) = true ∧
    (websOf .fixed).all isFixedWeb = true ∧ (websOf .reentry).all isCommutatorWeb = true ∧
    sort (((websOf .oddOrbit).map label).map labelCode ++ ((websOf .oddOrbit).map (fun w => swapPair (label w))).map labelCode ++ ((websOf .fixed).map label).map labelCode) = sort (allLabels.map labelCode) ∧
    sort (((websOf .oddOrbit).map label).map labelCode) = sort (((websOf .evenOrbit).map label).map labelCode) ∧
    (webs.zip records).all (fun p => typingOK p.1 p.2) = true := by decide +kernel

theorem no_fixedness_asked :
    fixedUnder (LemmaA.gens3.getD 2 []) (identity 2) (webs.getD 0 ⟨"", .fixed, []⟩) = false ∧
    LemmaA.gens3.all (fun u => fixedUnder u (identity 2) (webs.getD (Expected.recordCount - Expected.reentryCount - 1) ⟨"", .fixed, []⟩)) = true ∧
    LemmaA.gens2.all (fun u => fixedUnder (identity 3) u (webs.getD (Expected.recordCount - Expected.reentryCount - 1) ⟨"", .fixed, []⟩)) = true ∧
    (webs.getD (Expected.recordCount - Expected.reentryCount - 1) ⟨"", .fixed, []⟩).id = Expected.recordFixedUnderGroupId := by
  decide +kernel

end OrbitReading
end AlphaDerivation
