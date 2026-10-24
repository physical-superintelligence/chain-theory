import AlphaDerivation.Data.GaussMatrix
import AlphaDerivation.Data.Patterns
import AlphaDerivation.Data.Certificates

set_option maxRecDepth 100000

namespace AlphaDerivation
namespace LemmaA
open GM

def perms2 : List (List Nat) := [[0, 1], [1, 0]]

def perms3 : List (List Nat) := [[0, 1, 2], [0, 2, 1], [1, 0, 2], [1, 2, 0], [2, 0, 1], [2, 1, 0]]

def phases (d : Nat) : List (List Nat) := tuples 4 d

def monomial (d : Nat) (p ph : List Nat) : GM :=
  mk d (fun i j => if p.getD i 0 == j then G.phase (ph.getD i 0) else G.zero)

def group (d : Nat) (perms : List (List Nat)) : List GM :=
  perms.flatMap fun p => (phases d).map fun ph => monomial d p ph

def group2 : List GM := group 2 perms2

def group3 : List GM := group 3 perms3

def pairAction (d : Nat) (u : GM) : GM := kron d d u (conj u)

def pairIdentity (d : Nat) : GM := identity (d * d)

def pairProjector (d : Nat) : GM := mk (d * d) (fun a b => if a / d == a % d && b / d == b % d then G.one else G.zero)

def diagProjector (d : Nat) : GM := mk (d * d) (fun a b => if a == b && a / d == a % d then G.one else G.zero)

def commutesWith (d : Nat) (x g : GM) : Bool := mulN (d * d) x g == mulN (d * d) g x

def threeCommute (d : Nat) (grp : List GM) : Bool :=
  grp.all fun u => let a := pairAction d u
    commutesWith d (pairIdentity d) a && commutesWith d (pairProjector d) a && commutesWith d (diagProjector d) a

def gens3 : List GM := [monomial 3 [1, 0, 2] [0, 0, 0], monomial 3 [0, 2, 1] [0, 0, 0], monomial 3 [0, 1, 2] [1, 0, 0]]

def gens2 : List GM := [monomial 2 [1, 0] [0, 0], monomial 2 [0, 1] [1, 0]]

def lieAnti (d a b : Nat) : GM := let x := sub (unit d a b) (unit d b a); add (kron d d x (identity d)) (kron d d (identity d) x)

def lieSym (d a b : Nat) : GM := let x := add (unit d a b) (unit d b a); sub (kron d d x (identity d)) (kron d d (identity d) x)

def lieDiag (d a b : Nat) : GM := let x := sub (unit d a a) (unit d b b); sub (kron d d x (identity d)) (kron d d (identity d) x)

def lieGens (d : Nat) : List GM :=
  (List.range d).flatMap fun a => (List.range d).flatMap fun b =>
    if a < b then [lieAnti d a b, lieSym d a b, lieDiag d a b] else []

def haarTwoCommute (d : Nat) : Bool :=
  (lieGens d).all fun x => commutesWith d (pairIdentity d) x && commutesWith d (pairProjector d) x

def diagFailsHaar (d : Nat) : Bool := !(commutesWith d (diagProjector d) (lieAnti d 0 1))

def diagIndependent (d : Nat) : Bool :=
  entry (diagProjector d) 0 0 == G.one && entry (diagProjector d) 1 1 == G.zero &&
  entry (pairProjector d) 1 1 == G.zero && entry (pairProjector d) 0 0 == G.one

theorem group_orders : groupOrder 2 = 32 ∧ groupOrder 3 = 384 ∧ groupOrder 4 = 6144 ∧
    group2.length = 32 ∧ group3.length = 384 := by decide +kernel

theorem orbit_census : (patterns4 2).length = 8 ∧ (patterns4 3).length = 14 ∧ (patterns4 4).length = 15 := by
  decide +kernel

theorem commutant_three :
    commutantPatterns 2 = [[0, 0, 0, 0], [0, 0, 1, 1], [0, 1, 0, 1]] ∧
    commutantPatterns 3 = [[0, 0, 0, 0], [0, 0, 1, 1], [0, 1, 0, 1]] ∧
    commutantPatterns 4 = [[0, 0, 0, 0], [0, 0, 1, 1], [0, 1, 0, 1]] ∧
    (patterns4 2).length - (commutantPatterns 2).length = 5 ∧
    (patterns4 3).length - (commutantPatterns 3).length = 11 ∧
    (patterns4 4).length - (commutantPatterns 4).length = 12 := by decide +kernel

theorem three_commute : threeCommute 2 group2 = true ∧ threeCommute 2 gens2 = true ∧ threeCommute 3 gens3 = true := by
  decide +kernel

theorem diag_independent : diagIndependent 2 = true ∧ diagIndependent 3 = true := by decide +kernel

theorem haar_face : haarTwoCommute 2 = true ∧ haarTwoCommute 3 = true ∧
    diagFailsHaar 2 = true ∧ diagFailsHaar 3 = true := by decide +kernel

def phaseIndex (x : G) : Nat :=
  if x == G.one then 0 else if x == G.iu then 1 else if x == G.ofInt (-1) then 2 else if x == G.neg G.iu then 3 else 4

def code (d : Nat) (g : GM) : Nat :=
  (List.range d).foldl (fun acc i => acc * (4 * d) + (monoCol g i * 4 + phaseIndex (monoPhase g i))) 0

def decode (d : Nat) (c : Nat) : GM :=
  let digits := (List.range d).map fun i => (c / (4 * d) ^ (d - 1 - i)) % (4 * d)
  mk d (fun i j => let dg := digits.getD i 0; if dg / 4 == j then G.phase (dg % 4) else G.zero)

def closureRound (d : Nat) (gens : List GM) (st : List Nat × List GM × List GM) : List Nat × List GM × List GM :=
  st.2.2.foldl (fun (acc : List Nat × List GM × List GM) g =>
    gens.foldl (fun (acc2 : List Nat × List GM × List GM) s =>
      let h := mulN d g s
      let c := code d h
      if acc2.1.contains c then acc2 else (c :: acc2.1, h :: acc2.2.1, h :: acc2.2.2)) acc) (st.1, st.2.1, [])

def closure (d : Nat) (gens : List GM) (fuel : Nat) : List GM :=
  let rec go (st : List Nat × List GM × List GM) : Nat → List GM
    | 0 => st.2.1
    | f + 1 => match st.2.2 with
      | [] => st.2.1
      | _ => go (closureRound d gens st) f
  go ([code d (identity d)], [identity d], [identity d]) fuel

def closure3 : List GM := closure 3 gens3 20

def closure2 : List GM := closure 2 gens2 20

def generationCert (d : Nat) (cl grp : List GM) (order : Nat) : Bool :=
  let cc := cl.map (code d)
  let gc := grp.map (code d)
  cl.length == order && grp.length == order && cc.all (fun c => gc.contains c) && gc.all (fun c => cc.contains c) &&
  cl.all (fun g => decode d (code d g) == g) && grp.all (fun g => decode d (code d g) == g) && gc.eraseDups.length == order

def systemRows (d : Nat) (gens : List GM) : GM :=
  gens.flatMap fun g =>
    let gp := pairAction d g
    (List.range (d * d * d * d)).map fun x => flatten (entryComm (d * d) gp (x / (d * d)) (x % (d * d)))

def orbitSumVectors (d : Nat) : List (List G) :=
  [flatten (diagProjector d), flatten (sub (pairProjector d) (diagProjector d)), flatten (sub (pairIdentity d) (diagProjector d))]

end LemmaA
end AlphaDerivation
