import AlphaDerivation.Proofs.Theorem4

namespace OneLinkWord
open AlphaDerivation

inductive EndStatus where
  | open
  | struck
  | carried
deriving DecidableEq, Repr

structure LinkEnd where
  dim : Nat
  status : EndStatus
deriving DecidableEq, Repr

structure Link where
  centre : LinkEnd
  far : LinkEnd
  hubInLeg : Bool
deriving DecidableEq, Repr

inductive Weighting where
  | amplitude
  | stateCountAtTheSecondPower
  | registerPowerAtADepth
deriving DecidableEq, Repr

structure Word where
  links : List Link
  weighting : Weighting
  register : Nat
  registerPower : Nat
deriving Repr

structure Sectors where
  odd : Nat
  evenMixed : Nat
  evenSame : Nat
  closure : Nat
deriving DecidableEq, Repr

def sectorsOfRecord : Sectors :=
  ⟨Expected.sectorOdd, Expected.sectorEvenMixed, Expected.sectorEvenSame, Expected.sectorClosure⟩

def Link.struck (l : Link) : Bool := l.centre.status == EndStatus.struck || l.far.status == EndStatus.struck

def Link.measure (l : Link) : Nat := l.centre.dim * l.far.dim

def Link.actCount (l : Link) : Nat := if l.struck then 0 else l.measure

def Link.isRegisterLink (l : Link) : Bool := (l.centre.dim == 3 && l.far.dim == 2) || (l.centre.dim == 2 && l.far.dim == 3)

def Link.qubitOpen (l : Link) : Bool := (l.centre.dim == 2 && l.centre.status == EndStatus.open) || (l.far.dim == 2 && l.far.status == EndStatus.open)

def Link.qutritOpen (l : Link) : Bool := (l.centre.dim == 3 && l.centre.status == EndStatus.open) || (l.far.dim == 3 && l.far.status == EndStatus.open)

def Link.amplitude (s : Sectors) (l : Link) : Q4 :=
  if l.isRegisterLink && !l.struck then
    ⟨Int.ofNat s.odd, if l.qubitOpen then Int.ofNat s.evenMixed else 0, if l.qutritOpen then Int.ofNat s.evenSame else 0, if l.qubitOpen && l.qutritOpen then Int.ofNat s.closure else 0⟩
  else Q4.zero

def Link.bornCount (s : Sectors) (l : Link) : Nat :=
  if l.isRegisterLink then s.odd + (if l.qubitOpen then 2 * s.evenMixed else 0) + (if l.qutritOpen then 3 * s.evenSame else 0) + (if l.qubitOpen && l.qutritOpen then 6 * s.closure else 0) else 0

def Word.hubLegs (w : Word) : List Nat := (w.links.filter (fun l => l.hubInLeg)).map (fun l => l.far.dim)

def Word.dressing (w : Word) : Nat := w.hubLegs.foldl (fun a b => a * b) 1

def Word.actSum (w : Word) : Nat := (w.links.map Link.actCount).foldl (fun a b => a + b) 0

def Word.firstPower (w : Word) : Nat := w.dressing * w.actSum

def Word.amplitudeSum (s : Sectors) (w : Word) : Q4 := (w.links.map (Link.amplitude s)).foldl Q4.add Q4.zero

def Word.bornSum (s : Sectors) (w : Word) : Nat := (w.links.map (Link.bornCount s)).foldl (fun a b => a + b) 0

def Word.denominator (w : Word) : Nat := w.register ^ w.registerPower

def Word.atTheDockUnit (w : Word) : Word := { w with links := w.links.map (fun l => { l with hubInLeg := false }) }

def readout (s : Sectors) (w : Word) : Q4 × Nat :=
  match w.weighting with
  | Weighting.amplitude => (Q4.smul (Int.ofNat w.dressing) (w.amplitudeSum s), w.denominator)
  | Weighting.stateCountAtTheSecondPower => (⟨Int.ofNat w.firstPower, 0, 0, 0⟩, w.denominator)
  | Weighting.registerPowerAtADepth => (⟨Int.ofNat w.firstPower, 0, 0, 0⟩, w.denominator)

def bornReadout (s : Sectors) (w : Word) : Nat × Nat := (w.dressing * w.bornSum s, w.denominator)

abbrev theoremForm (kind : Weighting) (register : Nat) (w : Word) (cell : Q4) : Prop :=
  w.weighting = kind ∧ w.register = register ∧ (readout sectorsOfRecord w).1 = cell ∧ (readout sectorsOfRecord w).2 = w.denominator

def koide (a b c : Nat) : Nat × Nat := (a * a + b * b + c * c, (a + b + c) * (a + b + c))

def sumOverLinks (records : List Q4) : Q4 := records.foldl Q4.add Q4.zero

end OneLinkWord
