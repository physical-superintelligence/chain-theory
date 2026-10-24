import AlphaDerivation.Data.GaussMatrix
import AlphaDerivation.Data.RotationCertificates
import AlphaDerivation.Data.Expected

set_option maxRecDepth 100000

namespace AlphaDerivation
namespace AdjointRotation
open GM

def sigmaAnti : Nat → GM
  | 0 => [[G.zero, G.neg G.iu], [G.neg G.iu, G.zero]]
  | 1 => [[G.zero, G.ofInt (-1)], [G.one, G.zero]]
  | _ => [[G.neg G.iu, G.zero], [G.zero, G.iu]]

def D (a : Nat) : GM := kron 2 3 (sigmaAnti a) (identity 3)

def unit6 : GM := identity 6

def basis4 : List GM := [unit6, D 0, D 1, D 2]

def scale : List Int := [1, 2, 2, 2]

def gramScaled : List (List G) := basis4.map fun x => basis4.map fun y => trace (mulN 6 x y)

def gramRat : List (List (Int × Int)) :=
  (List.range 4).map fun i => (List.range 4).map fun j => ((GM.entry gramScaled i j).re, scale.getD i 1 * scale.getD j 1)

def ratEq (p q : Int × Int) : Bool := p.1 * q.2 == q.1 * p.2

def ratMatEq (a b : List (List (Int × Int))) : Bool :=
  a.length == b.length && (a.zip b).all fun r => r.1.length == r.2.length && (r.1.zip r.2).all fun p => ratEq p.1 p.2

def eps (a b c : Nat) : Int :=
  if [(0, 1, 2), (1, 2, 0), (2, 0, 1)].contains (a, b, c) then 1
  else if [(0, 2, 1), (2, 1, 0), (1, 0, 2)].contains (a, b, c) then -1 else 0

def adMat (a : Nat) : ZM := (List.range 3).map fun c => (List.range 3).map fun b => eps a b c

def bracketViaAd (a b : Nat) : GM :=
  (List.range 3).foldl (fun acc c => add acc (smul (G.ofInt (2 * ZM.entry (adMat a) c b)) (D c))) (zeroM 6)

def zadd (a b : ZM) : ZM := List.zipWith (fun r s => List.zipWith (· + ·) r s) a b

def zsub (a b : ZM) : ZM := List.zipWith (fun r s => List.zipWith (· - ·) r s) a b

def zsmul (c : Int) (a : ZM) : ZM := a.map fun r => r.map (c * ·)

def zzero (n : Nat) : ZM := (List.range n).map fun _ => (List.range n).map fun _ => 0

def zid (n : Nat) : ZM := (List.range n).map fun i => (List.range n).map fun j => if i == j then 1 else 0

def zantisym (a : ZM) : Bool := ZM.transposeN 3 a == zsmul (-1) a

def zcomm (a b : ZM) : ZM := zsub (ZM.mulN 3 a b) (ZM.mulN 3 b a)

def so3Target (a b : Nat) : ZM := (List.range 3).foldl (fun acc c => zadd acc (zsmul (eps a b c) (adMat c))) (zzero 3)

def G4 : ZM := [[12, 0, 0, 0], [0, -3, 0, 0], [0, 0, -3, 0], [0, 0, 0, -3]]

def isoRow (i j : Nat) : List Int := (List.range 16).map fun idx =>
  let k := idx / 4; let l := idx % 4
  (if l == i then ZM.entry G4 k j else 0) + (if l == j then ZM.entry G4 i k else 0)

def isoRows : ZM := (List.range 4).flatMap fun i => (List.range 4).map fun j => isoRow i j

def unitRows : ZM := (List.range 4).map fun i => (List.range 16).map fun idx => if idx == i * 4 then 1 else 0

def stabRows : ZM := isoRows ++ unitRows

def ad4 (a : Nat) : List Int := (List.range 16).map fun idx =>
  let k := idx / 4; let l := idx % 4
  if k == 0 || l == 0 then 0 else ZM.entry (adMat a) (k - 1) (l - 1)

def boost (a : Nat) : List Int := (List.range 16).map fun idx => if idx == a then 1 else if idx == a * 4 then 4 else 0

def adVectors : ZM := [ad4 0, ad4 1, ad4 2]

def isoVectors : ZM := [ad4 0, ad4 1, ad4 2, boost 1, boost 2, boost 3]

def signature (g : List (List G)) : Nat × Nat × Nat :=
  let n := g.length
  let diag := (List.range n).map fun i => GM.entry g i i
  let off := (List.range n).flatMap fun i => (List.range n).filterMap fun j => if i == j then none else some (GM.entry g i j)
  ((diag.filter fun x => x.im == 0 && 0 < x.re).length, (diag.filter fun x => x.im == 0 && x.re < 0).length, (off.filter fun x => x == G.zero).length)

def rotationPoint5 : ZM :=
  let A := adMat 0
  zadd (zadd (zsmul 5 (zid 3)) (zsmul 4 A)) (zsmul 2 (ZM.mulN 3 A A))

def AdjointRotationStatement : Prop :=
  (List.range 3).all (fun a => trace (D a) == G.zero && adjoint 6 (D a) == neg (D a)) = true ∧
  gramScaled = [[G.ofInt 6, G.zero, G.zero, G.zero], [G.zero, G.ofInt (-6), G.zero, G.zero], [G.zero, G.zero, G.ofInt (-6), G.zero], [G.zero, G.zero, G.zero, G.ofInt (-6)]] ∧
  ratMatEq gramRat Expected.gramRational = true ∧
  ratMatEq gramRat [[(6, 1), (0, 1), (0, 1), (0, 1)], [(0, 1), (-3, 2), (0, 1), (0, 1)], [(0, 1), (0, 1), (-3, 2), (0, 1)], [(0, 1), (0, 1), (0, 1), (-3, 2)]] = true ∧
  signature gramScaled = (1, 3, 12) ∧ Expected.signatureG23 = "1,3" ∧ Expected.unitTraceG23 = 6 ∧
  ratEq (6, 1) (Expected.ratioG23 * (-3), 2) = true ∧ Expected.ratioG23 = -4 ∧
  ZM.det (gramScaled.map fun r => r.map G.re) ≠ 0 ∧
  (List.range 3).all (fun a => (List.range 3).all fun b => comm 6 (D a) (D b) == bracketViaAd a b) = true ∧
  [adMat 0, adMat 1, adMat 2] = Expected.adMatrices ∧
  (List.range 3).all (fun a => zantisym (adMat a)) = true ∧
  (List.range 3).all (fun a => (List.range 3).all fun b => zcomm (adMat a) (adMat b) == so3Target a b) = true ∧
  Expected.adBracketsEpsilon = "9 of 9" ∧ Expected.adAntisymmetric = "3 of 3" ∧ Expected.unitFixed = "YES" ∧
  isoRows.length = 16 ∧ stabRows.length = 20 ∧
  isoVectors.all (fun v => ZM.mulVec isoRows v == List.replicate 16 0) = true ∧
  ZM.minor isoVectors (List.range 6) [14, 7, 9, 1, 2, 3] = zid 6 ∧
  ZM.det (ZM.minor isoRows RotationCertificates.isoRows RotationCertificates.isoCols) ≠ 0 ∧
  RotationCertificates.isoRows.length = 10 ∧ RotationCertificates.isoCols.length = 10 ∧ Expected.isometryAlgebraDim = 6 ∧
  adVectors.all (fun v => ZM.mulVec stabRows v == List.replicate 20 0) = true ∧
  ZM.minor adVectors (List.range 3) [14, 7, 9] = zid 3 ∧
  ZM.det (ZM.minor stabRows RotationCertificates.stabRows RotationCertificates.stabCols) ≠ 0 ∧
  RotationCertificates.stabRows.length = 13 ∧ RotationCertificates.stabCols.length = 13 ∧ Expected.stabiliserAlgebraDim = 3 ∧
  (List.range 3).all (fun a => !(ZM.mulVec unitRows (boost (a + 1)) == List.replicate 4 0)) = true ∧
  ZM.mulN 3 (ZM.transposeN 3 rotationPoint5) rotationPoint5 = zsmul 25 (zid 3) ∧ ZM.det rotationPoint5 = 125

theorem adjoint_rotation : AdjointRotationStatement := by
  unfold AdjointRotationStatement
  decide +kernel

end AdjointRotation
end AlphaDerivation
