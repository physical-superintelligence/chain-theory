import AlphaDerivation.Data.Expected
import AlphaDerivation.Proofs.LemmaB
import AlphaDerivation.Proofs.Theorem4

set_option maxRecDepth 100000

namespace AlphaDerivation
namespace Theorem5

abbrev Functional := Nat → Int

def linkPair (W : Functional) (a b : Nat) : Int := W a - W b

def vertex (W : Functional) (count : Int) (pairs : List (Nat × Nat)) : Int :=
  count + (pairs.map fun p => linkPair W p.1 p.2).foldl (· + ·) 0

def subdivided (a c b : Nat) : List (Nat × Nat) := [(a, c), (c, b), (c, c)]

theorem sub_add_sub (x y z : Int) : (x - y) + (y - z) = x - z := by
  rw [Int.sub_eq_add_neg, Int.sub_eq_add_neg, Int.sub_eq_add_neg, Int.add_assoc, ← Int.add_assoc (-y) y (-z), Int.add_left_neg, Int.zero_add]

theorem telescoping (W : Functional) (count : Int) (a c b : Nat) :
    vertex W count (subdivided a c b) = vertex W count [(a, b)] := by
  unfold vertex subdivided linkPair
  simp only [List.map, List.foldl, Int.sub_self, Int.add_zero, Int.zero_add]
  rw [sub_add_sub]

theorem one_link_iff (W : Functional) (count : Int) (a b : Nat) :
    vertex W count [(a, b)] = count ↔ W a = W b := by
  unfold vertex linkPair
  simp only [List.map, List.foldl, Int.zero_add]
  constructor
  · intro h
    have h2 : W a - W b = 0 := by
      have h3 : count + (W a - W b) = count + 0 := by rw [Int.add_zero]; exact h
      exact Int.add_left_cancel h3
    exact Int.eq_of_sub_eq_zero h2
  · intro h
    rw [Int.sub_eq_zero_of_eq h, Int.add_zero]

def unitFunctional : Functional := fun _ => 1

def wallFunctional : Functional := fun d => if d == 2 then 6 else if d == 3 then -6 else 0

theorem unit_sum_zero (acc : Int) : (pairs : List (Nat × Nat)) →
    (pairs.map fun p => linkPair unitFunctional p.1 p.2).foldl (· + ·) acc = acc
  | [] => rfl
  | p :: ps => by
    show (((p :: ps).map fun q => linkPair unitFunctional q.1 q.2).foldl (· + ·) acc) = acc
    simp only [List.map, List.foldl]
    have h : linkPair unitFunctional p.1 p.2 = 0 := by unfold linkPair unitFunctional; exact Int.sub_self 1
    rw [h, Int.add_zero]
    exact unit_sum_zero acc ps

theorem unit_washed (count : Int) (pairs : List (Nat × Nat)) : vertex unitFunctional count pairs = count := by
  unfold vertex; rw [unit_sum_zero]; exact Int.add_zero count

inductive Move | R | J1 | J2 | J3
deriving DecidableEq, Repr

abbrev Link := (String × Nat) × (String × Nat)

def dims (links : List Link) : List (Nat × Nat) := links.map fun l => (l.1.2, l.2.2)

def applyMove (k m : String × Nat) (x1 x2 : String × Nat) (links : List Link) : Move → List Link
  | .R => links.erase (k, m)
  | .J1 => (k, x1) :: links
  | .J3 => (x2, m) :: links
  | .J2 => links

def states (k m x1 x2 : String × Nat) (links : List Link) : List Move → List (List Link)
  | [] => [links]
  | mv :: rest => links :: states k m x1 x2 (applyMove k m x1 x2 links mv) rest

def allOrderings : List (List Move) :=
  let ms := [Move.R, Move.J1, Move.J2, Move.J3]
  ms.flatMap fun a => ms.flatMap fun b => ms.flatMap fun c => ms.flatMap fun d =>
    if a != b && a != c && a != d && b != c && b != d && c != d then [[a, b, c, d]] else []

def ahead (p : List Move) (x y : Move) : Bool := p.idxOf x < p.idxOf y

def orderingsA : List (List Move) := allOrderings.filter fun p => ahead p .R .J1 && ahead p .R .J3

def orderingsB : List (List Move) := orderingsA.filter fun p => ahead p .J2 .J1 && ahead p .J2 .J3

def orderingsC : List (List Move) := allOrderings

def orderingFirst : List (List Move) := [[.R, .J1, .J2, .J3]]

inductive Unit' | path | single | open'
deriving DecidableEq, Repr

inductive DimRule | end' | common | far | all
deriving DecidableEq, Repr

def dimsFor (rule : DimRule) (e ka kb : Nat) : List Nat := match rule with
  | .end' => [e]
  | .common => [min ka kb]
  | .far => [if ka == e then kb else ka]
  | .all => [2, 3, 4]

structure Reading where
  unit : Unit'
  ordering : String
  rule : DimRule
  reversed : Bool
deriving DecidableEq, Repr

def orderingsOf (name : String) : List (List Move) :=
  if name == "FIRST" then orderingFirst else if name == "A" then orderingsA else if name == "B" then orderingsB else orderingsC

def readings : List Reading :=
  (["FIRST", "A", "B", "C"].flatMap fun o => [DimRule.end', .common, .far, .all].flatMap fun r => [false, true].map fun s => Reading.mk .path o r s) ++
  ([DimRule.end', .common, .far, .all].flatMap fun r => [false, true].map fun s => Reading.mk .single "-" r s) ++
  [Reading.mk .open' "-" .end' false]

def oneLink (pol : Bool) : List Link := if pol then [(("A", 3), ("B", 2))] else [(("B", 2), ("A", 3))]

def readPaths (rd : Reading) (idx : Nat) (e : String) (ed : Nat) (links : List Link) : List (List (List Link)) :=
  match links.find? (fun l => l.1.1 == e || l.2.1 == e) with
  | none => []
  | some l =>
    let k := l.1; let m := l.2
    let ds := if rd.unit == .open' then [ed] else dimsFor rd.rule ed k.2 m.2
    ds.flatMap fun s =>
      let x1 := ("x" ++ toString idx ++ "b", s); let x2 := ("x" ++ toString idx ++ "k", s)
      match rd.unit with
      | .open' => [[links, applyMove k m x1 x2 links .R]]
      | .single => [[links, applyMove k m x1 x2 (applyMove k m x1 x2 (applyMove k m x1 x2 links .R) .J1) .J3]]
      | .path => (orderingsOf rd.ordering).map fun p => states k m x1 x2 links p

def identityAt (W : Functional) (path : List (List Link)) : Bool :=
  path.all fun st => vertex W 0 (dims st) == 0

def recordHolds (W : Functional) (rd : Reading) (ends : List (String × Nat)) : Bool :=
  [true, false].all fun pol =>
    let seq := if rd.reversed then ends.reverse else ends
    let rec go (links : List Link) (idx : Nat) : List (String × Nat) → Bool
      | [] => true
      | (e, ed) :: rest =>
        let ps := readPaths rd idx e ed links
        ps.all (identityAt W) && (match ps with | [] => rd.unit == .open' | p :: _ => go (p.getLastD links) (idx + 1) rest)
    go (oneLink pol) 0 seq

def readClasses : List (List (String × Nat)) :=
  [[("A", 3), ("B", 2)], [("A", 3), ("A", 3)], [("B", 2), ("B", 2)], [("B", 2)], []]

def mergesF : Nat → List Move → List Move → List (List Move)
  | 0, xs, ys => [xs ++ ys]
  | _, [], ys => [ys]
  | _, xs, [] => [xs]
  | f + 1, x :: xs, y :: ys => (mergesF f xs (y :: ys)).map (x :: ·) ++ (mergesF f (x :: xs) ys).map (y :: ·)

def merges (xs ys : List Move) : List (List Move) := mergesF (xs.length + ys.length) xs ys

def twoCopyLink (pol : Bool) : List Link :=
  if pol then [(("A1", 3), ("B1", 2)), (("A2", 3), ("B2", 2))] else [(("B1", 2), ("A1", 3)), (("B2", 2), ("A2", 3))]

def tagged (c : Nat) (p : List Move) : List (Nat × Move) := p.map fun m => (c, m)

def interleaveStates (pol : Bool) : List (Nat × Move) → List Link → List (List Link)
  | [], links => [links]
  | (c, mv) :: rest, links =>
    let k := if pol then ("A" ++ toString c, 3) else ("B" ++ toString c, 2)
    let m := if pol then ("B" ++ toString c, 2) else ("A" ++ toString c, 3)
    let x1 := ("y" ++ toString c ++ "b", 2); let x2 := ("y" ++ toString c ++ "k", 2)
    links :: interleaveStates pol rest (applyMove k m x1 x2 links mv)

def interleavings (_pol : Bool) : List (List (Nat × Move)) :=
  orderingsA.flatMap fun p => orderingsA.flatMap fun q => (merges p q).map fun r =>

    let rec tag (r : List Move) (p q : List Move) : List (Nat × Move) := match r, p, q with
      | [], _, _ => []
      | x :: xs, a :: as, bs => if x == a then (1, x) :: tag xs as bs else (match bs with | b :: bs' => if x == b then (2, x) :: tag xs (a :: as) bs' else [] | [] => [])
      | x :: xs, [], b :: bs => if x == b then (2, x) :: tag xs [] bs else []
      | _ :: _, [], [] => []
    tag r p q

theorem readings_washed :
    readings.length = Expected.readingsCount ∧
    (readings.filter fun r => r.unit == .path).length = Expected.readingsPath ∧
    (readings.filter fun r => r.unit == .single).length = Expected.readingsSingle ∧
    (readings.filter fun r => r.unit == .open').length = Expected.readingsOpen ∧
    [orderingFirst.length, orderingsA.length, orderingsB.length, orderingsC.length] = [1, 8, 4, 24] ∧
    readings.all (fun rd => readClasses.all fun ends => recordHolds unitFunctional rd ends) = true ∧
    identityAt wallFunctional [oneLink true] = false ∧ vertex wallFunctional 0 (dims (oneLink true)) = -12 := by
  decide +kernel

theorem interleavings_washed :
    (merges [.R, .J1, .J2, .J3] [.R, .J1, .J2, .J3]).length = 70 ∧
    (interleavings true).length + (interleavings false).length = 70 * 8 * 8 * 2 ∧
    [true, false].all (fun pol => (interleavings pol).all fun r =>
      identityAt unitFunctional (interleaveStates pol r (twoCopyLink pol))) = true := by
  decide +kernel

def subdivisionsOfRecord : List (Nat × Nat × Nat) := [(3, 2, 2), (3, 3, 2), (3, 4, 2), (2, 2, 3), (2, 3, 3), (2, 4, 3)]

def alphabetPairs : List (Nat × Nat) := [2, 3, 4].flatMap fun a => [2, 3, 4].map fun b => (a, b)

theorem line_of_record :
    vertex unitFunctional 0 [(3, 2)] = 0 ∧
    alphabetPairs.all (fun p => vertex unitFunctional 0 [p] == 0) = true ∧
    subdivisionsOfRecord.all (fun s => vertex unitFunctional 0 (subdivided s.1 s.2.1 s.2.2) == vertex unitFunctional 0 [(s.1, s.2.2)]) = true ∧
    subdivisionsOfRecord.all (fun s => vertex wallFunctional 0 (subdivided s.1 s.2.1 s.2.2) == vertex wallFunctional 0 [(s.1, s.2.2)]) = true ∧
    vertex wallFunctional 0 [(3, 2)] = -12 ∧ Expected.wardRecordIdentity = "172 of 172" ∧
    Expected.wardLinkPaths = "48 of 48" := by decide +kernel

opaque ReadCapWoronowiczStormer : Prop

opaque SoftPhotonTheorem : Prop

opaque Decoupling : Prop

opaque OnShellDefinition : Prop

opaque OnShellIdentification : Prop

theorem ward_identity :
    (∀ (W : Functional) (count : Int) (a c b : Nat), vertex W count (subdivided a c b) = vertex W count [(a, b)]) ∧
    (∀ (W : Functional) (count : Int) (a b : Nat), vertex W count [(a, b)] = count ↔ W a = W b) ∧
    (∀ (count : Int) (pairs : List (Nat × Nat)), vertex unitFunctional count pairs = count) ∧
    vertex unitFunctional 0 [(3, 2)] = 0 :=
  ⟨telescoping, one_link_iff, unit_washed, line_of_record.1⟩

theorem correspondence_at_structure (_cap : ReadCapWoronowiczStormer)
    (_soft : SoftPhotonTheorem) (_dec : Decoupling) (_onshell : OnShellDefinition) (_ident : OnShellIdentification) :
    LemmaB.ElectromagneticLike LemmaB.objectOfRecord ∧
    Theorem4.onShellCoupling LemmaB.objectOfRecord = Theorem4.closedFormOfRecord :=
  ⟨LemmaB.objectOfRecord_electromagneticLike, Theorem4.value_at_structure LemmaB.objectOfRecord_electromagneticLike⟩

end Theorem5
end AlphaDerivation
