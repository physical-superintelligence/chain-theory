import AlphaDerivation.Data.GaussMatrix

set_option maxRecDepth 100000

namespace AlphaDerivation
namespace IdAlg
open GM

def n : Nat := 5

def hdiag (a b : Nat) : GM := smul G.iu (sub (unit n a a) (unit n b b))

def anti (a b : Nat) : GM := sub (unit n a b) (unit n b a)

def symi (a b : Nat) : GM := smul G.iu (add (unit n a b) (unit n b a))

def TU : GM := mk n (fun i j => if i == j then (if i < 2 then ⟨0, 3⟩ else ⟨0, -2⟩) else G.zero)

def basis : List GM :=
  [anti 0 1, symi 0 1, hdiag 0 1, anti 2 3, anti 2 4, anti 3 4, symi 2 3, symi 2 4, symi 3 4, hdiag 2 3, hdiag 3 4, TU]

def coords6 (X : GM) : List Int :=
  let e := fun i j => entry X i j
  let y := fun i => (e i i).im
  [6 * (e 0 1).re, 6 * (e 0 1).im, 3 * (y 0 - y 1),
   6 * (e 2 3).re, 6 * (e 2 4).re, 6 * (e 3 4).re,
   6 * (e 2 3).im, 6 * (e 2 4).im, 6 * (e 3 4).im,
   6 * y 2 + 2 * (y 0 + y 1), -(6 * y 4 + 2 * (y 0 + y 1)), y 0 + y 1]

def combine (c : List Int) : GM :=
  (List.zipWith (fun ck bk => smul (G.ofInt ck) bk) c basis).foldl add (zeroM n)

def bracket (i j : Nat) : GM := comm n (basis.getD i (zeroM n)) (basis.getD j (zeroM n))

def closureHolds : Bool :=
  (List.range 12).all fun i => (List.range 12).all fun j =>
    smul (G.ofInt 6) (bracket i j) == combine (coords6 (bracket i j))

def c (i j m : Nat) : Int := (coords6 (bracket i j)).getD m 0

def adjointConstraint : ZM :=
  (List.range 12).flatMap fun j => (List.range 12).map fun m => (List.range 12).map fun k => c k j m

def tuVector : List Int := [0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1]

def centreMinorRows : List Nat := [1, 2, 14, 40, 41, 42, 43, 44, 45, 53, 68]

def ad (k : Nat) : ZM := (List.range 12).map fun m => (List.range 12).map fun j => c k j m

def killing : ZM :=
  let tr := fun (a : ZM) => ((List.range 12).map fun i => ZM.entry a i i).foldl (· + ·) 0
  (List.range 12).map fun i => (List.range 12).map fun j => tr (ZM.mulN 12 (ad i) (ad j))

def traceForm : ZM :=
  (List.range 12).map fun i => (List.range 12).map fun j =>
    (trace (mulN n (basis.getD i (zeroM n)) (basis.getD j (zeroM n)))).re

def block2 (X : GM) : GM := mk 2 (fun i j => entry X i j)

def block3 (X : GM) : GM := mk 3 (fun i j => entry X (i + 2) (j + 2))

def rho (X : GM) : GM := add (kron 2 3 (block2 X) (identity 3)) (kron 2 3 (identity 2) (block3 X))

def realPart (R : GM) : ZM :=
  (List.range 6).map fun i => (List.range 6).map fun j =>
    let x := entry R i j
    if x.im == 0 then x.re else x.im

def tensorConstraint : ZM :=
  basis.flatMap fun X =>
    let S := realPart (rho X)
    (List.range 6).flatMap fun a => (List.range 6).map fun b =>
      (List.range 36).map fun idx =>
        let (p, q) := (idx / 6, idx % 6)
        (if p == a then -(ZM.entry S q b) else 0) + (if q == b then ZM.entry S a p else 0)

def identityVector : List Int := (List.range 36).map fun idx => if idx / 6 == idx % 6 then 1 else 0

def tensorMinorRows : List Nat := [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 36, 37, 38, 42, 43, 44, 48, 49, 50, 108, 109, 110, 116, 120, 121, 146, 152]

def tensorMinorCols : List Nat := List.range 35

def pairKet23 : List G := [G.one, G.zero, G.zero, G.zero, G.one, G.zero]

def TU22 : GM := mk 4 (fun i j => if i == j then (if i < 2 then ⟨0, 1⟩ else ⟨0, -1⟩) else G.zero)

def rho22 (X : GM) : GM :=
  add (kron 2 2 (mk 2 (fun i j => entry X i j)) (identity 2)) (kron 2 2 (identity 2) (mk 2 (fun i j => entry X (i + 2) (j + 2))))

theorem closure : closureHolds = true ∧ basis.length = 12 := by decide +kernel

theorem centre_one_dimensional :
    ZM.mulVec adjointConstraint tuVector = List.replicate 144 0 ∧
    ZM.det (ZM.minor adjointConstraint centreMinorRows (List.range 11)) ≠ 0 := by decide +kernel

theorem tu_central : basis.all (fun b => isZero (comm n TU b)) = true ∧ isZero (comm n TU TU) = true := by
  decide +kernel

theorem forms :
    ZM.mulVec killing tuVector = List.replicate 12 0 ∧
    ZM.det (ZM.minor killing (List.range 11) (List.range 11)) ≠ 0 ∧
    ZM.det traceForm ≠ 0 ∧ ZM.entry traceForm 11 11 = -30 := by decide +kernel

theorem tensor_commutant_scalars :
    ZM.mulVec tensorConstraint identityVector = List.replicate 432 0 ∧
    ZM.det (ZM.minor tensorConstraint tensorMinorRows tensorMinorCols) ≠ 0 := by decide +kernel

theorem centre_acts :
    rho TU = smul G.iu (identity 6) ∧ mulVec (rho TU) pairKet23 = smulVec G.iu pairKet23 ∧
    isZero (rho22 TU22) = true := by decide +kernel

end IdAlg
end AlphaDerivation
