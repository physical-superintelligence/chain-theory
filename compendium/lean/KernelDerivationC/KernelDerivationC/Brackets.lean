import KernelDerivationC.Exact
import KernelDerivationC.Targets
import AxiomDeclarationTwo.Structure

set_option autoImplicit false
set_option maxRecDepth 100000

namespace KernelDerivationC
namespace Brackets
open AxiomDeclarationTwo (WorldTwo worldTwoThree)

def link : WorldTwo := worldTwoThree

def pairDims : List (Nat × Nat) := link.pairs.map (fun p => (link.dim p.a, link.dim p.b))

def dSupport : Nat := (link.pairs.map link.support).headD 0

def dOther : Nat := (link.pairs.map (fun p => max (link.dim p.a) (link.dim p.b))).headD 0

def dimTotal : Nat := dSupport * dOther

theorem link_dims : pairDims = [(2, 3)] ∧ dSupport = 2 ∧ dOther = 3 ∧ dimTotal = 6 := by decide +kernel

def half : Q := ⟨1, 2⟩

def minusIOverTwo : QI := ⟨Q.ofInt 0, Q.neg half⟩

def tracelessTriple : List MatQI :=
  [ [[QI.ofInt 0, QI.ofInt 1], [QI.ofInt 1, QI.ofInt 0]],
    [[QI.ofInt 0, QI.imag (Q.ofInt (-1))], [QI.imag (Q.ofInt 1), QI.ofInt 0]],
    [[QI.ofInt 1, QI.ofInt 0], [QI.ofInt 0, QI.ofInt (-1)]] ]

def T : List MatQI := tracelessTriple.map (fun s => MatQI.scale minusIOverTwo s)

def D : List MatQI := T.map (fun t => MatQI.kroneckerIdentity t dOther)

def U : MatQI := MatQI.identity dimTotal

def spanning : List MatQI := U :: D

theorem directions_form : D.all MatQI.isAntiHermitian = true ∧ D.all MatQI.isTraceless = true ∧ MatQI.isHermitian U = true := by decide +kernel

def eps (a b c : Nat) : Int :=
  if (a, b, c) == (0, 1, 2) || (a, b, c) == (1, 2, 0) || (a, b, c) == (2, 0, 1) then 1
  else if (a, b, c) == (0, 2, 1) || (a, b, c) == (2, 1, 0) || (a, b, c) == (1, 0, 2) then -1 else 0

def dirCoords (M : MatQI) : List QI :=
  D.map (fun Dc => let g := MatQI.traceOfProduct Dc Dc; let t := MatQI.traceOfProduct M Dc; ⟨Q.div t.re g.re, Q.div t.im g.re⟩)

def directionBracketCoords : List (List (List QI)) :=
  (List.range 3).map (fun a => (List.range 3).map (fun b => dirCoords (MatQI.bracket (D.getD a []) (D.getD b []))))

def directionBracketsEpsilon : Nat :=
  ((List.range 3).flatMap (fun a => (List.range 3).flatMap (fun b => (List.range 3).map (fun c =>
    let x := ((directionBracketCoords.getD a []).getD b []).getD c (QI.ofInt 0)
    Q.isZero x.im && Q.eq x.re (Q.ofInt (eps a b c)))))).filter id |>.length

def gramC : MatQI := MatQI.ofFun 4 4 (fun i j => MatQI.traceOfProduct (spanning.getD i []) (spanning.getD j []))

def gramImaginaryZero : Nat := ((List.range 4).flatMap (fun i => (List.range 4).map (fun j => Q.isZero (MatQI.at_ gramC i j).im))).filter id |>.length

def gram : MatQ := MatQ.ofFun 4 4 (fun i j => (MatQI.at_ gramC i j).re)

def diagonalSignature (g : MatQ) : Nat × Nat :=
  (((List.range (Mat.shape g).1).filter (fun i => Q.isPos (MatQ.at_ g i i))).length, ((List.range (Mat.shape g).1).filter (fun i => Q.isNeg (MatQ.at_ g i i))).length)

def isDiagonal (g : MatQ) : Bool := (List.range (Mat.shape g).1).all (fun i => (List.range (Mat.shape g).2).all (fun j => i == j || Q.isZero (MatQ.at_ g i j)))

theorem split_of_record : directionBracketsEpsilon = 27 ∧ gramImaginaryZero = 16 ∧ MatQ.str gram = "6,0,0,0;0,-3/2,0,0;0,0,-3/2,0;0,0,0,-3/2" ∧
    isDiagonal gram = true ∧ diagonalSignature gram = (1, 3) := by decide +kernel

def isIsometry (X : MatQ) : Bool := MatQ.isZero (MatQ.add (MatQ.mul (MatQ.transpose X) gram) (MatQ.mul gram X))

def isometrySystem : MatQ :=
  MatQ.ofFun 16 16 (fun r u =>
    let i := r / 4; let j := Nat.mod r 4; let p := u / 4; let q := Nat.mod u 4
    Q.add (if p == j && q == i then MatQ.at_ gram j j else Q.ofInt 0) (if p == i && q == j then MatQ.at_ gram i i else Q.ofInt 0))

def algebraDim : Nat := 16 - MatQ.rank isometrySystem

def stabiliserSystem : MatQ := isometrySystem ++ (List.range 4).map (fun i => (List.range 16).map (fun u => if u == 4 * i then Q.ofInt 1 else Q.ofInt 0))

def stabiliserDim : Nat := 16 - MatQ.rank stabiliserSystem

theorem algebra_dims : algebraDim = 6 ∧ stabiliserDim = 3 ∧ algebraDim - stabiliserDim = 3 := by decide +kernel

def J (a : Nat) : MatQ :=
  MatQ.ofFun 4 4 (fun r c => if r == 0 || c == 0 then Q.ofInt 0 else
    (((directionBracketCoords.getD a []).getD (c - 1) []).getD (r - 1) (QI.ofInt 0)).re)

def bK : Q := half
def cK : Q := Q.neg (Q.div (Q.mul bK (MatQ.at_ gram 0 0)) (MatQ.at_ gram 1 1))
def K1 : MatQ := MatQ.ofFun 4 4 (fun r c => if (r, c) == (0, 1) then bK else if (r, c) == (1, 0) then cK else Q.ofInt 0)

def K2 : MatQ := MatQ.bracket (J 2) K1

def K3 : MatQ := MatQ.bracket (J 0) K2

def basis : List MatQ := [J 0, J 1, J 2, K1, K2, K3]

def basisNames : List String := ["J1", "J2", "J3", "K1", "K2", "K3"]

def flat (X : MatQ) : List Q := (List.range 16).map (fun u => MatQ.at_ X (u / 4) (Nat.mod u 4))

def unitVector : List Q := [Q.ofInt 1, Q.ofInt 0, Q.ofInt 0, Q.ofInt 0]

def generatorType (X : MatQ) : String := if (MatQ.apply X unitVector).all Q.isZero then "ROTATION" else "BOOST"

theorem generators_of_record :
    basis.map MatQ.str = ["0,0,0,0;0,0,0,0;0,0,0,-1;0,0,1,0", "0,0,0,0;0,0,0,1;0,0,0,0;0,-1,0,0", "0,0,0,0;0,0,-1,0;0,1,0,0;0,0,0,0",
      "0,1/2,0,0;2,0,0,0;0,0,0,0;0,0,0,0", "0,0,1/2,0;0,0,0,0;2,0,0,0;0,0,0,0", "0,0,0,1/2;0,0,0,0;0,0,0,0;2,0,0,0"] ∧ Q.str cK = "2" ∧
    basis.all isIsometry = true ∧ MatQ.rank (basis.map flat) = 6 ∧
    basis.map generatorType = ["ROTATION", "ROTATION", "ROTATION", "BOOST", "BOOST", "BOOST"] ∧
    (basis.drop 3).map (fun X => (MatQ.apply X unitVector).map Q.str) = [["0", "2", "0", "0"], ["0", "0", "2", "0"], ["0", "0", "0", "2"]] := by decide +kernel

def augmentedBasis : MatQ := (List.range 16).map (fun u => (basis.map (fun B => MatQ.at_ B (u / 4) (Nat.mod u 4))) ++ (List.range 16).map (fun v => if u == v then Q.ofInt 1 else Q.ofInt 0))

def reducedBasis : MatQ := ((List.range 6).foldl (fun (acc : MatQ × Nat) col => MatQ.eliminateColumn acc.1 acc.2 col) (augmentedBasis, 0)).1

def rowOps : MatQ := MatQ.ofFun 16 16 (fun i j => MatQ.at_ reducedBasis i (6 + j))

def pivots : List Q := (List.range 6).map (fun k => MatQ.at_ reducedBasis k k)

def solve (X : MatQ) : List Q :=
  let y := MatQ.apply rowOps (flat X)
  (List.range 6).map (fun k => Q.div (y.getD k (Q.ofInt 0)) (pivots.getD k (Q.ofInt 1)))

def insideSix (X : MatQ) : Bool :=
  let y := MatQ.apply rowOps (flat X)
  (List.range 10).all (fun r => Q.isZero (y.getD (6 + r) (Q.ofInt 0)))

def combine (cs : List Q) : MatQ := (List.range 6).foldl (fun acc k => MatQ.add acc (MatQ.scale (cs.getD k (Q.ofInt 0)) (basis.getD k []))) (MatQ.zero 4 4)

def bracketAt (i j : Nat) : MatQ := MatQ.bracket (basis.getD i []) (basis.getD j [])

def solutions : List (List (List Q × Bool)) :=
  (List.range 6).map (fun i => (List.range 6).map (fun j =>
    let B := bracketAt i j; let cs := solve B; (cs, insideSix B && MatQ.eq B (combine cs))))

def f (i j k : Nat) : Q := (((solutions.getD i []).getD j ([], false)).1).getD k (Q.ofInt 0)

def closedAt (i j : Nat) : Bool := ((solutions.getD i []).getD j ([], false)).2

def pairs : List (Nat × Nat) := (List.range 6).flatMap (fun i => (List.range 6).filter (fun j => i < j) |>.map (fun j => (i, j)))

def closedInsideSix : Nat := (pairs.filter (fun p => closedAt p.1 p.2)).length

def bracketCell (i j : Nat) : String := String.intercalate "," ((List.range 6).map (fun k => Q.str (f i j k)))

def epsilonCount (blockA blockB blockT : Nat) (sign : Int) : Nat :=
  ((List.range 3).flatMap (fun a => (List.range 3).flatMap (fun b => (List.range 3).map (fun c =>
    Q.eq (f (blockA + a) (blockB + b) (blockT + c)) (Q.ofInt (sign * eps a b c)))))).filter id |>.length

def zeroPartCount (blockA blockB blockT : Nat) : Nat :=
  ((List.range 3).flatMap (fun a => (List.range 3).flatMap (fun b => (List.range 3).map (fun c =>
    Q.isZero (f (blockA + a) (blockB + b) (blockT + c)))))).filter id |>.length

def boostCoefficient : Q := f 3 4 2
def boostSign : String := if Q.isNeg boostCoefficient then "MINUS" else "PLUS"

def triples : List (Nat × Nat × Nat) := (List.range 6).flatMap (fun i => (List.range 6).flatMap (fun j => (List.range 6).filter (fun k => i < j && j < k) |>.map (fun k => (i, j, k))))

def jacobiAt (t : Nat × Nat × Nat) : Bool :=
  let X := basis.getD t.fst []; let Y := basis.getD t.snd.fst []; let Z := basis.getD t.snd.snd []
  MatQ.isZero (MatQ.add (MatQ.add (MatQ.bracket (MatQ.bracket X Y) Z) (MatQ.bracket (MatQ.bracket Y Z) X)) (MatQ.bracket (MatQ.bracket Z X) Y))

def jacobiCount : Nat := (triples.filter jacobiAt).length

def ad (i : Nat) : MatQ := MatQ.ofFun 6 6 (fun k j => f i j k)

def ads : List MatQ := (List.range 6).map ad

def killing : MatQ := MatQ.ofFun 6 6 (fun i j => MatQ.trace (MatQ.mul (ads.getD i []) (ads.getD j [])))

def blockSign (g : MatQ) (from_ count : Nat) : String :=
  if (List.range count).all (fun k => Q.isNeg (MatQ.at_ g (from_ + k) (from_ + k))) then "NEGATIVE"
  else if (List.range count).all (fun k => Q.isPos (MatQ.at_ g (from_ + k) (from_ + k))) then "POSITIVE" else "MIXED"

def signatureCell (g : MatQ) : String := toString (diagonalSignature g).2 ++ "," ++ toString (diagonalSignature g).1

def realSplitCommuting : Nat :=
  ((List.range 3).flatMap (fun a => (List.range 3).map (fun b =>
    MatQ.isZero (MatQ.bracket (MatQ.add (basis.getD a []) (basis.getD (3 + a) [])) (MatQ.sub (basis.getD b []) (basis.getD (3 + b) [])))))).filter id |>.length

def realSplitPresent : String := if realSplitCommuting == 9 then "YES" else "NO"

def iUnit : QI := QI.imag (Q.ofInt 1)

def Es : List MatQI := (List.range 3).map (fun a => MatQI.add (MatQI.ofQ (basis.getD a [])) (MatQI.scale iUnit (MatQI.ofQ (basis.getD (3 + a) []))))

def Fs : List MatQI := (List.range 3).map (fun a => MatQI.sub (MatQI.ofQ (basis.getD a [])) (MatQI.scale iUnit (MatQI.ofQ (basis.getD (3 + a) []))))

def complexSplitCommuting : Nat := ((List.range 3).flatMap (fun a => (List.range 3).map (fun b => MatQI.isZero (MatQI.bracket (Es.getD a []) (Fs.getD b []))))).filter id |>.length

def closingTwoEpsilon (Xs : List MatQI) : Nat :=
  ((List.range 3).flatMap (fun a => (List.range 3).map (fun b =>
    let rhs := (List.range 3).foldl (fun acc c => MatQI.add acc (MatQI.scale (QI.ofInt (2 * eps a b c)) (Xs.getD c []))) (MatQI.ofFun 4 4 (fun _ _ => QI.ofInt 0))
    MatQI.eq (MatQI.bracket (Xs.getD a []) (Xs.getD b [])) rhs))).filter id |>.length

def complexSplitClosingPlus : Nat := closingTwoEpsilon Es
def complexSplitClosingMinus : Nat := closingTwoEpsilon Fs

def complexSplitPresent : String := if complexSplitCommuting == 9 && complexSplitClosingPlus == 9 && complexSplitClosingMinus == 9 then "YES" else "NO"

def complexSplitRule : String := "J plus i K and J minus i K over the Gaussian rationals: commuting and each closing with the brackets 2 epsilon"

def nonzeroConstants : List String :=
  pairs.flatMap (fun p => ((List.range 6).filter (fun k => !(Q.isZero (f p.1 p.2 k)))).map (fun k =>
    (basisNames.getD p.1 "") ++ "," ++ (basisNames.getD p.2 "") ++ "," ++ (basisNames.getD k "") ++ ":" ++ Q.str (f p.1 p.2 k)))

def ofCount (x y : Nat) : String := toString x ++ " of " ++ toString y

def derivedCells : List (List String) :=
  [ ["brkt.J1,J2", bracketCell 0 1], ["brkt.J1,J3", bracketCell 0 2], ["brkt.J1,K1", bracketCell 0 3], ["brkt.J1,K2", bracketCell 0 4], ["brkt.J1,K3", bracketCell 0 5],
    ["brkt.J2,J3", bracketCell 1 2], ["brkt.J2,K1", bracketCell 1 3], ["brkt.J2,K2", bracketCell 1 4], ["brkt.J2,K3", bracketCell 1 5],
    ["brkt.J3,K1", bracketCell 2 3], ["brkt.J3,K2", bracketCell 2 4], ["brkt.J3,K3", bracketCell 2 5],
    ["brkt.JJ.K.part.zero", ofCount (zeroPartCount 0 0 3) 27], ["brkt.JJ.eq.epsilon.J", ofCount (epsilonCount 0 0 0 1) 27],
    ["brkt.JK.J.part.zero", ofCount (zeroPartCount 0 3 0) 27], ["brkt.JK.eq.epsilon.K", ofCount (epsilonCount 0 3 3 1) 27],
    ["brkt.K1,K2", bracketCell 3 4], ["brkt.K1,K3", bracketCell 3 5], ["brkt.K2,K3", bracketCell 4 5],
    ["brkt.KK.K.part.zero", ofCount (zeroPartCount 3 3 3) 27], ["brkt.KK.coefficient", Q.str boostCoefficient],
    ["brkt.KK.eq.minus.epsilon.J", ofCount (epsilonCount 3 3 0 (-1)) 27], ["brkt.KK.eq.plus.epsilon.J", ofCount (epsilonCount 3 3 0 1) 27],
    ["brkt.KK.sign", boostSign], ["brkt.basis.order", String.intercalate ";" basisNames], ["brkt.closed.inside.six", ofCount closedInsideSix 15],
    ["brkt.complex.split.closing.minus", ofCount complexSplitClosingMinus 9], ["brkt.complex.split.closing.plus", ofCount complexSplitClosingPlus 9],
    ["brkt.complex.split.commuting", ofCount complexSplitCommuting 9], ["brkt.complex.split.present", complexSplitPresent], ["brkt.complex.split.rule", complexSplitRule],
    ["brkt.jacobi", ofCount jacobiCount 20], ["brkt.killing.J.block.sign", blockSign killing 0 3], ["brkt.killing.K.block.sign", blockSign killing 3 3],
    ["brkt.killing.form", MatQ.str killing], ["brkt.killing.nondegenerate", if MatQ.rank killing == 6 then "YES" else "NO"], ["brkt.killing.signature", signatureCell killing],
    ["brkt.real.split.commuting", ofCount realSplitCommuting 9], ["brkt.real.split.present", realSplitPresent],
    ["brkt.structure.constants.nonzero", String.intercalate ";" nonzeroConstants], ["brkt.structure.constants.nonzero.count", toString nonzeroConstants.length] ]

theorem brackets_of_record :
    closedInsideSix = 15 ∧ triples.length = 20 ∧ jacobiCount = 20 ∧ isDiagonal killing = true ∧ MatQ.rank killing = 6 ∧ diagonalSignature killing = (3, 3) ∧
    Q.str boostCoefficient = "-1" ∧ realSplitCommuting = 3 ∧ complexSplitCommuting = 9 ∧ complexSplitClosingPlus = 9 ∧ complexSplitClosingMinus = 9 ∧ nonzeroConstants.length = 12 ∧
    derivedCells.length = 41 ∧ derivedCells = Targets.tableLGIS.map (fun r => r.take 2) ∧ derivedCells = Targets.moduleLGIS ∧
    (derivedCells.filter (fun r => r == ["brkt.basis.order", "J1;J2;J3;K1;K2;K3"])).length = 1 ∧ (derivedCells.filter (fun r => r == ["brkt.jacobi", "20 of 20"])).length = 1 ∧
    (derivedCells.filter (fun r => r == ["brkt.killing.signature", "3,3"])).length = 1 ∧ (derivedCells.filter (fun r => r == ["brkt.closed.inside.six", "15 of 15"])).length = 1 := by decide +kernel

end Brackets
end KernelDerivationC
