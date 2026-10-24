import AlphaDerivation.Data.GaussMatrix
import AlphaDerivation.Data.FieldElement
import AlphaDerivation.Data.Records
import AlphaDerivation.Data.Expected
import AlphaDerivation.Proofs.IdentificationAlgebra

set_option maxRecDepth 100000

namespace AlphaDerivation
namespace LemmaB

def alphabet : List Nat := [2, 3, 4]

def readCap : Nat := 6

def readableGenres : List (Nat × Nat) :=
  alphabet.flatMap fun a => alphabet.flatMap fun b => if a ≤ b && a * b ≤ readCap then [(a, b)] else []

def gcd : Nat → Nat → Nat
  | 0, b => b
  | a + 1, b => gcd (b % (a + 1)) (a + 1)
termination_by a _ => a
decreasing_by exact Nat.lt_succ_of_le (Nat.le_of_lt_succ (Nat.mod_lt _ (Nat.succ_pos _)))

def pairScalar (g : Nat × Nat) : Int := ((g.2 : Int) - (g.1 : Int)) / (gcd g.1 g.2 : Int)

def abelian (g : Nat × Nat) : Bool := pairScalar g != 0

def centralFunctional (g : Nat × Nat) : Int × Int :=
  if g.1 == g.2 then (0, 0) else ((g.2 / gcd g.1 g.2 : Nat), -((g.1 / gcd g.1 g.2 : Nat) : Int))

def generatorBlocksScalar (g : Nat × Nat) : Bool :=
  let (a, b) := centralFunctional g
  (List.replicate g.1 a ++ List.replicate g.2 b).length == g.1 + g.2

def conserved (g : Nat × Nat) : Bool := generatorBlocksScalar g && centralFunctional g != (0, 0)

def expVec : Nat → Int × Int × Int
  | 2 => (1, 0, 0) | 3 => (0, 1, 0) | 4 => (2, 0, 0) | 5 => (0, 0, 1) | _ => (0, 0, 0)

inductive Form | open | closed
deriving DecidableEq, Repr

structure Obj where
  genre : Nat × Nat
  form : Form
deriving DecidableEq, Repr

def chain (o : Obj) : List Nat := match o.form with
  | .open => [o.genre.1, o.genre.2]
  | .closed => [o.genre.1, o.genre.2, o.genre.1]

def displacement (c : List Nat) : Int × Int × Int :=
  let a := expVec (c.headD 0); let b := expVec (c.getLastD 0)
  (b.1 - a.1, b.2.1 - a.2.1, b.2.2 - a.2.2)

structure Graph where
  sites : List Nat
  links : List (Nat × Nat)
deriving DecidableEq, Repr

def linkGraph (o : Obj) : Graph := ⟨[o.genre.1, o.genre.2], [(0, 1)]⟩

def stepsFrom (g : Graph) (v : Nat) : List (Nat × Bool) :=
  (List.range g.links.length).flatMap fun i =>
    let l := g.links.getD i (0, 0)
    (if l.1 == v then [(i, true)] else []) ++ (if l.2 == v then [(i, false)] else [])

def target (g : Graph) (s : Nat × Bool) : Nat := let l := g.links.getD s.1 (0, 0); if s.2 then l.2 else l.1

def walks (g : Graph) : Nat → Nat → Option (Nat × Bool) → List (List (Nat × Bool))
  | 0, _, _ => [[]]
  | n + 1, v, last =>
    (stepsFrom g v).flatMap fun s =>
      if (match last with | some l => l.1 == s.1 && l.2 != s.2 | none => false) then []
      else (walks g n (target g s) (some s)).map (s :: ·)

def endSite (g : Graph) (v : Nat) (w : List (Nat × Bool)) : Nat := w.foldl (fun cur s => let _ := cur; target g s) v

def closedNonBacktracking (g : Graph) (n : Nat) : List (Nat × List (Nat × Bool)) :=
  (List.range g.sites.length).flatMap fun v => ((walks g n v none).filter (fun w => endSite g v w == v)).map fun w => (v, w)

def passageCensus (g : Graph) (cap : Nat) : List Nat := (List.range cap).map fun i => (closedNonBacktracking g (i + 1)).length

def toChain (g : Graph) (p : Nat × List (Nat × Bool)) : List Nat :=
  (p.1 :: (p.2.foldl (fun (acc : List Nat × Nat) s => let t := target g s; (acc.1 ++ [t], t)) ([], p.1)).1).map fun v => g.sites.getD v 0

def closedReads (o : Obj) : List (List Nat) := match o.form with
  | .open => ((List.range readCap).flatMap fun i => closedNonBacktracking (linkGraph o) (i + 1)).map (toChain (linkGraph o))
  | .closed => [chain o]

def passageCount (c : List Nat) : Nat := c.length - 1

def restEnergy (o : Obj) : Nat := ((closedReads o).map passageCount).foldl (· + ·) 0

def masslessRecord (o : Obj) : Bool := (closedReads o).isEmpty && restEnergy o == 0

def masslessDisplacement (o : Obj) : Bool := displacement (chain o) != (0, 0, 0)

def massless (o : Obj) : Bool := masslessRecord o && masslessDisplacement o

def frameContent : Nat → List Nat
  | 2 => [1] | 3 => [0, 0, 0] | 4 => [0, 2] | _ => []

def cg (a b : Nat) : List Nat :=
  let lo := if a ≥ b then a - b else b - a
  (List.range (((a + b) - lo) / 2 + 1)).map fun k => lo + 2 * k

def tensor (x y : List Nat) : List Nat := x.flatMap fun a => y.flatMap fun b => cg a b

def endSpace (d : Nat) : List Nat := tensor (frameContent d) (frameContent d)

def traceless (d : Nat) : List Nat := (endSpace d).erase 0

def cutRegister (g : Nat × Nat) : List Nat := tensor (traceless g.1) (traceless g.2)

def labels (xs : List Nat) : List Nat := xs.eraseDups

def dimOf (xs : List Nat) : Nat := (xs.map (· + 1)).foldl (· + ·) 0

def spinOne (g : Nat × Nat) : Bool := labels (cutRegister g) == [2]

def allFour (o : Obj) : Bool := abelian o.genre && conserved o.genre && massless o && spinOne o.genre

def readableObjects : List Obj := readableGenres.flatMap fun g => [⟨g, .open⟩, ⟨g, .closed⟩]

def name (o : Obj) : String :=
  "G" ++ toString o.genre.1 ++ toString o.genre.2 ++ (match o.form with | .open => ".open" | .closed => ".closed")

def objectOfRecord : Obj := ⟨(2, 3), .open⟩

def zeroTransfer : Bool :=
  steps.all fun s => s.2.2.2 == (0, 0, 0) &&
    (s.2.1.1 + s.2.2.1.1, s.2.1.2.1 + s.2.2.1.2.1, s.2.1.2.2 + s.2.2.1.2.2) == ((0 : Int), (0 : Int), (0 : Int))

structure ElectromagneticLike (o : Obj) : Prop where
  abelian : abelian o.genre = true
  conserved : conserved o.genre = true
  massless : massless o = true
  spinOne : spinOne o.genre = true
  zeroTransfer : zeroTransfer = true

theorem readable_and_acting :
    readableGenres = Expected.readableGenres ∧ readCap = Expected.readCap ∧
    readableGenres.filter abelian = Expected.actingGenres ∧
    [pairScalar (2, 2), pairScalar (2, 3)] = Expected.pairScalars := by decide +kernel

theorem centre_generators :
    (let (a, b) := centralFunctional (2, 3); List.replicate 2 a ++ List.replicate 3 b) = Expected.centreGenerator23 ∧
    (List.replicate 2 (1 : Int) ++ List.replicate 2 (-1 : Int)) = Expected.centreGenerator22 ∧
    centralFunctional (2, 2) = (0, 0) ∧ centralFunctional (2, 3) = (3, -2) := by decide +kernel

theorem spin_content :
    cutRegister (2, 3) = List.replicate 8 2 ∧ dimOf (cutRegister (2, 3)) = 24 ∧ spinOne (2, 3) = true ∧
    labels (cutRegister (2, 2)) = [0, 2, 4] ∧ dimOf (cutRegister (2, 2)) = 9 ∧ spinOne (2, 2) = false ∧
    cg 1 1 = [0, 2] ∧ 2 * 2 = 1 + 3 ∧ 1 * (1 + 1) = 2 ∧ traceless 2 = [2] := by decide +kernel

theorem massless_faces :
    closedReads objectOfRecord = [] ∧ restEnergy objectOfRecord = 0 ∧ restEnergy objectOfRecord = Expected.photonChainSum ∧
    displacement (chain objectOfRecord) = (-1, 1, 0) ∧ massless objectOfRecord = true ∧
    massless ⟨(2, 3), .closed⟩ = false ∧ massless ⟨(2, 2), .open⟩ = false ∧
    (closedReads ⟨(2, 3), .closed⟩).length = 1 ∧ restEnergy ⟨(2, 3), .closed⟩ = 2 := by decide +kernel

theorem unique_object :
    (readableObjects.filter allFour).map name = Expected.allFourObjects ∧
    (readableObjects.filter allFour).length = Expected.allFourCount ∧
    readableObjects.filter allFour = [objectOfRecord] ∧ readableObjects.length = 4 := by decide +kernel

theorem zero_transfer : zeroTransfer = true ∧ steps.length = records.length := by decide +kernel

theorem objectOfRecord_electromagneticLike : ElectromagneticLike objectOfRecord :=
  ⟨by decide +kernel, by decide +kernel, by decide +kernel, by decide +kernel, by decide +kernel⟩

def rootOf : Nat → Q4
  | 2 => Q4.root2 | 3 => Q4.root3 | 4 => ⟨2, 0, 0, 0⟩ | 6 => Q4.root6 | _ => Q4.one

def closedReadAmplitude (reads : List (List Nat)) : Q4 :=
  reads.foldl (fun acc c => Q4.add acc ((c.drop 1).foldl (fun a d => Q4.mul a (rootOf d)) Q4.one)) Q4.zero

theorem office_at_the_one_link :
    passageCensus (linkGraph objectOfRecord) Expected.passageCap = Expected.passageCensusByLength ∧
    Expected.passageCensusByLength = [0, 0, 0, 0, 0, 0] ∧ Expected.passageCap = readCap ∧
    closedReads objectOfRecord = [] ∧ restEnergy objectOfRecord = 0 ∧
    closedReadAmplitude (closedReads objectOfRecord) = Q4.zero ∧
    Expected.commonSupport = min 2 3 ∧ Expected.supportRegister = 2 * 2 * 2 * 2 ∧
    Expected.admittedUnits.all (fun u => 0 < u && (Expected.firstPowerOpen * Expected.firstPowerOpen) / (u * u) == 0) = true ∧
    Expected.firstPowerOpen = 0 ∧ Expected.openReadoutCanon = 0 := by decide +kernel

end LemmaB
end AlphaDerivation
