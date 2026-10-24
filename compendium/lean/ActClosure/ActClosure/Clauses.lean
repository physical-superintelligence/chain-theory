import ActClosure.Web
import ActClosure.Data.Acts
import ActClosure.Data.Admission
import ActClosure.Data.Refused

set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosure

inductive Clause where
  | entry | genre | forward | cap | centre | budget | rule
  deriving DecidableEq, Repr, BEq

def Clause.id : Clause → String
  | .entry => "ENTRY" | .genre => "GENRE" | .forward => "FORWARD" | .cap => "CAP" | .centre => "CENTRE" | .budget => "BUDGET" | .rule => "RULE"

def Clause.ofId (s : String) : Option Clause :=
  if s == "ENTRY" then some .entry else if s == "GENRE" then some .genre else if s == "FORWARD" then some .forward else if s == "CAP" then some .cap
  else if s == "CENTRE" then some .centre else if s == "BUDGET" then some .budget else if s == "RULE" then some .rule else none

def clauseOrder : List Clause := [.entry, .genre, .forward, .cap, .centre, .budget, .rule]

structure Cap where
  siteBound : Nat
  deriving DecidableEq, Repr

def Act.inScope (a : Act) : Clause → Option Bool
  | .entry => some (a.kind == .attach && a.genre.1 != a.genre.2)
  | .genre => some (a.genre == (2, 2) || a.genre == (2, 3))
  | .forward => some (a.kind == .attach || a.kind == .hubForm)
  | .cap => some ((a.kind == .joinWithin || a.kind == .joinAcross) && (a.genre == (2, 2) || a.genre == (3, 3)))
  | _ => none

def Clause.actLevel : Clause → Bool
  | .forward => true | .centre => true | .rule => true | _ => false

def Act.verdict (a : Act) (w : Web) (x _y : Nat) (cap : Cap) : Clause → Bool
  | .entry => a.genre.1 == a.genre.2 || w.dimOf x == a.genre.1
  | .genre => a.genre == (2, 2) || a.genre == (2, 3)
  | .forward => a.dir == .forward
  | .cap => w.sites ≤ cap.siteBound
  | .centre => a.genre.1 == a.genre.2
  | .budget => w.sites ≤ cap.siteBound
  | .rule => (a.kind == .hubForm && a.dir == .forward) || ((a.kind == .joinWithin || a.kind == .joinAcross) && a.genre == (2, 2) && a.dir == .forward)

def Act.actVerdict (a : Act) (c : Clause) : Bool := a.verdict ⟨[], []⟩ 0 0 ⟨0⟩ c

def Act.firstMove (a : Act) : Option String := (matchOfRecord.lookup a.label).bind (fun m => m.head?)

def Act.moves (a : Act) : List String := (matchOfRecord.lookup a.label).getD []

def moveRow (id : String) : Option MoveRow := movesOfRecord.find? (fun m => m.id == id)

def refusedRow (a : Act) : Option RefusedRow := refusedOfRecord.find? (fun r => r.act == a.label)

def Act.carried (a : Act) : List Clause :=
  match a.firstMove with
  | some id => ((moveRow id).map (fun m => m.carried.filterMap Clause.ofId)).getD []
  | none => ((refusedRow a).map (fun r => (r.cells.filter (fun c => 0 < c.snd.fst)).filterMap (fun c => Clause.ofId c.1))).getD []

def Act.admittedByClauses (a : Act) (w : Web) (x y : Nat) (cap : Cap) : Bool := a.carried.all (fun c => a.verdict w x y cap c)

def Act.admittedFull (a : Act) (w : Web) (x y : Nat) (cap : Cap) : Bool := a.admitted w x y && a.admittedByClauses w x y cap

def actsAtAMove : List Act := actsOfRecord.filter (fun a => a.firstMove.isSome)

def actsAtNoMove : List Act := actsOfRecord.filter (fun a => a.firstMove.isNone)

def MoveRow.cell (m : MoveRow) (c : Clause) : Option (Nat × Nat) := (m.cells.lookup c.id).getD none

def MoveRow.carries (m : MoveRow) (c : Clause) : Bool := m.carried.contains c.id

def scopeRemet : Bool :=
  actsAtAMove.all (fun a => clauseOrder.all (fun c => match a.inScope c, a.firstMove.bind moveRow with
    | some s, some m => m.carries c == s
    | some _, none => false
    | none, _ => true))

def verdictsRemetAtMoves : Bool :=
  actsAtAMove.all (fun a => clauseOrder.all (fun c => !c.actLevel || (match a.firstMove.bind moveRow with
    | some m => (match m.cell c with
      | some (adm, ref) => if a.actVerdict c then ref == 0 else adm == 0
      | none => true)
    | none => false)))

def actLevelCells : Nat :=
  (actsAtAMove.flatMap (fun a => clauseOrder.filterMap (fun c => if c.actLevel then (a.firstMove.bind moveRow).bind (fun m => m.cell c) else none))).length

def verdictsRemetAtRefused : Bool :=
  actsAtNoMove.all (fun a => match refusedRow a with
    | none => false
    | some r => r.cells.all (fun c => match Clause.ofId c.1 with
      | some cl => !cl.actLevel || c.snd.fst == 0 || (c.snd.snd.snd.snd == (if a.actVerdict cl then "ADMITS" else "REFUSES"))
      | none => false))

def scopeRemetAtRefused : Bool :=
  actsAtNoMove.all (fun a => match refusedRow a with
    | none => false
    | some r => r.cells.all (fun c => match Clause.ofId c.1 with
      | some cl => (match a.inScope cl with
        | some s => !(0 < c.snd.fst) || s
        | none => true)
      | none => false))

def refusedByAClause : List String := (refusedOfRecord.filter (fun r => r.refusing != "NONE")).map (fun r => r.act)

def refusedByNone : List String := (refusedOfRecord.filter (fun r => r.refusing == "NONE")).map (fun r => r.act)

def refusingClauses : List String := ((refusedOfRecord.filter (fun r => r.refusing != "NONE")).map (fun r => r.refusing)).eraseDups

def refusingRederived (a : Act) : String :=
  match refusedRow a with
  | none => "ABSENT"
  | some r => ((clauseOrder.find? (fun c => c.actLevel && (r.cells.any (fun x => x.1 == c.id && 0 < x.snd.fst)) && !(a.actVerdict c))).map Clause.id).getD "NONE"

def refusingRemet : Bool := actsAtNoMove.all (fun a => ((refusedRow a).map (fun r => r.refusing == refusingRederived a)).getD false)

def refusedCensus : Nat × Nat × Nat × String × List String :=
  (refusedOfRecord.length, refusedByAClause.length, refusedByNone.length, (refusedByNone.headD "NONE"), refusingClauses)

def precondCensus : List (String × Nat) :=
  (clauseOrder.map Clause.id ++ ["NONE"]).map (fun c => (c, (movesOfRecord.filter (fun m => m.precondition == c)).length))

def carryingCensus : List (String × Nat) := clauseOrder.map (fun c => (c.id, (movesOfRecord.filter (fun m => m.carries c)).length))

end ActClosure
