import ActClosure.Web
import ActClosure.Data.Acts
import ActClosureCapFree.Data.Bound

set_option autoImplicit false
set_option maxRecDepth 100000
namespace ActClosureCapFree

def genreLinks : List ActClosure.Web := ActClosure.genres.map (fun g => ⟨[g.1, g.2], [(0, 1)]⟩)

def insertNat (x : Nat) : List Nat → List Nat
  | [] => [x]
  | y :: ys => if x ≤ y then x :: y :: ys else y :: insertNat x ys

def sortNat (xs : List Nat) : List Nat := xs.foldl (fun acc x => insertNat x acc) []

def indexed {α : Type} : List α → Nat → List (Nat × α)
  | [], _ => []
  | x :: xs, i => (i, x) :: indexed xs (i + 1)
end ActClosureCapFree
namespace ActClosure.Web
open ActClosureCapFree (sortNat siteBound)

def component (w : Web) (i : Nat) : Web :=
  let s := sortNat (reach w.sites w [i])
  let pos := fun v => (s.findIdx? (fun x => x == v)).getD 0
  ⟨s.map w.dimOf, (w.links.filter (fun l => s.contains l.1 && s.contains l.2)).map (fun l => (pos l.1, pos l.2))⟩

def isConnected (w : Web) : Bool := (reach w.sites w [0]).length == w.sites

def disjointUnion (w p : Web) : Web := ⟨w.dims ++ p.dims, w.links ++ p.links.map (fun l => (l.1 + w.sites, l.2 + w.sites))⟩

def oneDimension (w : Web) : Bool := w.links.all (fun l => w.dimOf l.1 == w.dimOf l.2)

def normLink (l : Nat × Nat) : Nat × Nat := if l.1 ≤ l.2 then l else (l.2, l.1)

def relabel (v : Web) (perm : List Nat) : Web :=
  ⟨(List.range v.sites).map (fun j => v.dimOf ((perm.findIdx? (fun x => x == j)).getD 0)), v.links.map (fun l => (perm.getD l.1 0, perm.getD l.2 0))⟩

def isoBy (v : Web) (perm : List Nat) (s : Web) : Bool :=
  perm.length == v.sites && v.sites == s.sites && (List.range v.sites).all (fun j => perm.contains j)
  && (v.relabel perm).dims == s.dims && ActClosure.sameMultiset ((v.relabel perm).links.map normLink) (s.links.map normLink)
end ActClosure.Web
namespace ActClosureCapFree
open ActClosure (Web Act Kind Dir actsOfRecord)

def actsIndexed : List (Nat × Act) := indexed actsOfRecord 0

structure Step where
  act : Nat
  x : Nat
  y : Nat
  target : Nat
  perm : List Nat
  target2 : Nat
  perm2 : List Nat
  deriving Repr, BEq

def findStep (steps : List Step) (a x y : Nat) : Option Step := steps.find? (fun s => s.act == a && s.x == x && s.y == y)

def resultCertified (stateAt : Nat → Web) (steps : List Step) (ia : Nat) (a : Act) (v : Web) (x y : Nat) : Bool :=
  if siteBound < v.sites then true
  else match findStep steps ia x y with
    | none => false
    | some st => match a.kind, a.dir with
      | .joinAcross, .inverse => (v.component x).isoBy st.perm (stateAt st.target) && (v.component y).isoBy st.perm2 (stateAt st.target2)
      | _, _ => v.isoBy st.perm (stateAt st.target)

def closedAtActs (stateAt : Nat → Web) (w : Web) (steps : List Step) : Bool :=
  actsIndexed.all (fun ia => (ia.2.args w).all (fun p =>
    match ia.2.apply w p.1 p.2 with
    | some v => resultCertified stateAt steps ia.1 ia.2 v p.1 p.2
    | none => true))

structure AcrossStep where
  partner : Nat
  act : Nat
  x : Nat
  y : Nat
  target : Nat
  perm : List Nat
  deriving Repr, BEq

def findAcross (steps : List AcrossStep) (k a x y : Nat) : Option AcrossStep := steps.find? (fun s => s.partner == k && s.act == a && s.x == x && s.y == y)

def acrossIndexed : List (Nat × Act) := actsIndexed.filter (fun ia => ia.2.kind == Kind.joinAcross && ia.2.dir == Dir.forward)

def crossPairs (w p : Web) : List (Nat × Nat) := (List.range w.sites).flatMap (fun q => (List.range p.sites).map (fun r => (q, r + w.sites)))

def closedAtAcross (stateAt : Nat → Web) (partners : List (Nat × Web)) (w : Web) (steps : List AcrossStep) : Bool :=
  (partners.filter (fun kp => kp.2.sites + w.sites ≤ siteBound && kp.2.sites ≤ w.sites)).all (fun kp =>
    let u := w.disjointUnion kp.2
    acrossIndexed.all (fun ia => (crossPairs w kp.2).all (fun q =>
      match ia.2.apply u q.1 q.2 with
      | some v => match findAcross steps kp.1 ia.1 q.1 q.2 with
        | none => false
        | some st => v.isoBy st.perm (stateAt st.target)
      | none => true)))

def closedShard (stateAt : Nat → Web) (ws : List Web) (ss : List (List Step)) : Bool :=
  ws.length == ss.length && (ws.zip ss).all (fun p => closedAtActs stateAt p.1 p.2)

def acrossShard (stateAt : Nat → Web) (partners : List (Nat × Web)) (ws : List Web) (ss : List (List AcrossStep)) : Bool :=
  ws.length == ss.length && (ws.zip ss).all (fun p => closedAtAcross stateAt partners p.1 p.2)

def stateWithinBound (w : Web) : Bool := w.sites ≤ siteBound && w.wellFormed && w.isConnected

def countsAt (w : Web) : List Nat := w.membership

def underCaps (caps : List Nat) (w : Web) : Bool := (countsAt w).length == caps.length && ((countsAt w).zip caps).all (fun p => p.1 < p.2)

def maxCountsOver (ws : List Web) : List Nat := ws.foldl (fun acc w => (acc.zip (countsAt w)).map (fun p => max p.1 p.2)) [0, 0, 0, 0, 0, 0]

def firstAtOrOverCap (caps : List Nat) (ws : List Web) : Option (Nat × Nat) :=
  (ws.findIdx? (fun w => !(underCaps caps w))).bind (fun i =>
    (((countsAt (ws.getD i ⟨[], []⟩)).zip caps).findIdx? (fun p => p.2 ≤ p.1)).map (fun g => (i, g)))

def oneDimensionCount (ws : List Web) : Nat := (ws.filter Web.oneDimension).length

def bySites (ws : List Web) : List Nat := (List.range (siteBound + 1)).map (fun n => (ws.filter (fun w => w.sites == n)).length)
end ActClosureCapFree
