import AxiomDeclaration
import ActClosure.Web
import ActClosure.Data.Acts

set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosure
open AxiomDeclaration

def worldToWeb (w : World) : Web := ⟨(finList w.qudits).map w.dim, w.pairs.map (fun p => (p.a.val, p.b.val))⟩

def Web.dimFn (w : Web) : Fin w.sites → Nat := fun i => w.dims.getD i.val 0

def Web.pairsOf (w : Web) : List (Pair w.sites) :=
  w.links.filterMap (fun l => if h1 : l.1 < w.sites then (if h2 : l.2 < w.sites then some ⟨⟨l.1, h1⟩, ⟨l.2, h2⟩⟩ else none) else none)

def Web.toWorld? (w : Web) : Option World :=
  if h : (w.pairsOf.all (pairAdmitted w.dimFn)) = true then some ⟨w.sites, w.dimFn, w.pairsOf, h⟩ else none

def Web.isWorld (w : Web) : Bool := w.toWorld?.isSome

def Web.equalGenres (w : Web) : Bool := w.links.all (fun l => w.dimOf l.1 == w.dimOf l.2)

def Act.applyWorld (a : Act) (w : World) (x y : Nat) : Option World := (a.apply (worldToWeb w) x y).bind Web.toWorld?

def Act.admittedWorld (a : Act) (w : World) (x y : Nat) : Bool := (a.applyWorld w x y).isSome

def Act.instancesWorld (a : Act) (w : World) : List (Nat × Nat) := (a.args (worldToWeb w)).filter (fun p => a.admittedWorld w p.1 p.2)

def unequalActs : List Act := actsOfRecord.filter (fun a => a.genre.1 != a.genre.2)

def equalActs : List Act := actsOfRecord.filter (fun a => a.genre.1 == a.genre.2)

def exampleWebs : List Web := [worldToWeb worldThree, worldToWeb worldOne]

end ActClosure
