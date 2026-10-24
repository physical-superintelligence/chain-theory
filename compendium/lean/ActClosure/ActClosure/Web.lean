set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosure

def isLetter (d : Nat) : Bool := d == 2 || d == 3 || d == 4

structure Web where
  dims : List Nat
  links : List (Nat × Nat)
  deriving DecidableEq, Repr, BEq

def genreOf (a b : Nat) : Nat × Nat := if a ≤ b then (a, b) else (b, a)

def genres : List (Nat × Nat) := [(2, 2), (2, 3), (2, 4), (3, 3), (3, 4), (4, 4)]

namespace Web

def sites (w : Web) : Nat := w.dims.length

def dimOf (w : Web) (i : Nat) : Nat := w.dims.getD i 0

def hasSite (w : Web) (i : Nat) : Bool := i < w.sites

def touches (l : Nat × Nat) (i : Nat) : Bool := l.1 == i || l.2 == i

def linkGenre (w : Web) (l : Nat × Nat) : Nat × Nat := genreOf (w.dimOf l.1) (w.dimOf l.2)

def valence (w : Web) (i : Nat) : Nat := (w.links.filter (fun l => touches l i)).length

def hasFree (w : Web) (i : Nat) : Bool := w.valence i < w.dimOf i

def adjacent (w : Web) (i j : Nat) : Bool := w.links.any (fun l => (l.1 == i && l.2 == j) || (l.1 == j && l.2 == i))

def neighbours (w : Web) (i : Nat) : List Nat := (w.links.filter (fun l => touches l i)).map (fun l => if l.1 == i then l.2 else l.1)

def grow (w : Web) (s : List Nat) : List Nat := s ++ (s.flatMap (fun i => (w.neighbours i).filter (fun j => !(s.contains j)))).eraseDups

def reach : Nat → Web → List Nat → List Nat
  | 0, _, s => s
  | n + 1, w, s => reach n w (grow w s)

def sameWeb (w : Web) (i j : Nat) : Bool := (reach w.sites w [i]).contains j

def isLeaf (w : Web) (i : Nat) : Bool := w.valence i == 1

def eraseLink (w : Web) (i j : Nat) : Web := ⟨w.dims, w.links.filter (fun l => !((l.1 == i && l.2 == j) || (l.1 == j && l.2 == i)))⟩

def isBridge (w : Web) (i j : Nat) : Bool := w.adjacent i j && !((w.eraseLink i j).sameWeb i j)

def valenceBound (w : Web) : Bool := (List.range w.sites).all (fun i => w.valence i ≤ w.dimOf i)

def linksWithin (w : Web) : Bool := w.links.all (fun l => l.1 < w.sites && l.2 < w.sites && l.1 != l.2)

def wellFormed (w : Web) : Bool := w.dims.all isLetter && w.linksWithin && w.valenceBound

def noSiteAtNoPair (w : Web) : Bool := (List.range w.sites).all (fun i => 0 < w.valence i)

def shift (k i : Nat) : Nat := if k < i then i - 1 else i

def removeSite (w : Web) (k : Nat) : Web := ⟨w.dims.eraseIdx k, (w.links.filter (fun l => !(touches l k))).map (fun l => (shift k l.1, shift k l.2))⟩

def repoint (a b : Nat) (l : Nat × Nat) : Nat × Nat := (if l.1 == b then a else l.1, if l.2 == b then a else l.2)

def census (w : Web) (g : Nat × Nat) : Nat := (w.links.filter (fun l => w.linkGenre l == g)).length

def membership (w : Web) : List Nat := genres.map w.census

def profile (w : Web) : List (Nat × Nat) := (List.range w.sites).map (fun i => (w.dimOf i, w.valence i))

def linkProfile (w : Web) (l : Nat × Nat) : Nat × Nat × Nat × Nat :=
  if w.dimOf l.1 ≤ w.dimOf l.2 then (w.dimOf l.1, w.valence l.1, w.dimOf l.2, w.valence l.2) else (w.dimOf l.2, w.valence l.2, w.dimOf l.1, w.valence l.1)

def canonical (w : Web) : List Nat × List (Nat × Nat) × List (Nat × Nat × Nat × Nat) := (w.dims, w.links.map w.linkGenre, w.links.map w.linkProfile)

end Web

def sameMultiset {α : Type} [BEq α] (xs ys : List α) : Bool := xs.length == ys.length && xs.all (fun x => xs.count x == ys.count x) && ys.all (fun y => xs.count y == ys.count y)

def Web.canonEq (w v : Web) : Bool :=
  sameMultiset w.canonical.1 v.canonical.1 && sameMultiset w.canonical.snd.fst v.canonical.snd.fst && sameMultiset w.canonical.snd.snd v.canonical.snd.snd

inductive Kind where
  | attach | joinWithin | joinAcross | hubForm
  deriving DecidableEq, Repr, BEq

inductive Dir where
  | forward | inverse
  deriving DecidableEq, Repr, BEq

structure Act where
  label : String
  kind : Kind
  dir : Dir
  genre : Nat × Nat
  readSite : String
  partner : String
  freeClause : String
  adjacencyClause : String
  sitesDelta : Int
  linksDelta : Int
  radius : Nat
  heads : String
  deriving Repr, BEq

namespace Web

def attach (w : Web) (q d : Nat) : Web := ⟨w.dims ++ [d], w.links ++ [(q, w.sites)]⟩

def attachAdmitted (w : Web) (q d : Nat) (g : Nat × Nat) : Bool :=
  w.hasSite q && isLetter d && genreOf (w.dimOf q) d == g && w.hasFree q

def attachInv (w : Web) (q r : Nat) : Web := (w.eraseLink q r).removeSite r

def attachInvAdmitted (w : Web) (q r : Nat) (g : Nat × Nat) : Bool :=
  w.hasSite q && w.hasSite r && q != r && genreOf (w.dimOf q) (w.dimOf r) == g && w.isLeaf r && w.adjacent q r && 2 ≤ w.valence q

def join (w : Web) (q r : Nat) : Web := ⟨w.dims, w.links ++ [(q, r)]⟩

def joinWithinAdmitted (w : Web) (q r : Nat) (g : Nat × Nat) : Bool :=
  w.hasSite q && w.hasSite r && q != r && genreOf (w.dimOf q) (w.dimOf r) == g && w.hasFree q && w.hasFree r && !(w.adjacent q r) && w.sameWeb q r

def joinAcrossAdmitted (w : Web) (q r : Nat) (g : Nat × Nat) : Bool :=
  w.hasSite q && w.hasSite r && q != r && genreOf (w.dimOf q) (w.dimOf r) == g && w.hasFree q && w.hasFree r && !(w.sameWeb q r)

def joinWithinInvAdmitted (w : Web) (q r : Nat) (g : Nat × Nat) : Bool :=
  w.hasSite q && w.hasSite r && q != r && genreOf (w.dimOf q) (w.dimOf r) == g && w.adjacent q r && 2 ≤ w.valence q && 2 ≤ w.valence r && !(w.isBridge q r)

def joinAcrossInvAdmitted (w : Web) (q r : Nat) (g : Nat × Nat) : Bool :=
  w.hasSite q && w.hasSite r && q != r && genreOf (w.dimOf q) (w.dimOf r) == g && w.adjacent q r && 2 ≤ w.valence q && 2 ≤ w.valence r && w.isBridge q r

def hubForm (w : Web) (a b : Nat) : Web :=
  let w1 := w.eraseLink a b
  let w2 : Web := ⟨w1.dims.set a 4, w1.links.map (repoint a b)⟩
  w2.removeSite b

def hubFormAdmitted (w : Web) (a b : Nat) (g : Nat × Nat) : Bool :=
  w.hasSite a && w.hasSite b && a != b && w.dimOf a == 2 && w.dimOf b == 2 && w.adjacent a b && 2 ≤ w.valence a && 2 ≤ w.valence b
  && g == (2, 2) && !((w.neighbours a).any (fun x => x != b && (w.neighbours b).contains x)) && w.valence a + w.valence b ≤ 6

def hubSplit (w : Web) (h : Nat) : Web :=
  let ls := w.links.filter (fun l => touches l h)
  let others := w.links.filter (fun l => !(touches l h))
  let b := w.sites
  let moved := (ls.drop 1).map (repoint b h)
  ⟨(w.dims.set h 2) ++ [2], others ++ ls.take 1 ++ moved ++ [(h, b)]⟩

def hubSplitAdmitted (w : Web) (h : Nat) (g : Nat × Nat) : Bool :=
  w.hasSite h && w.dimOf h == 4 && w.valence h ≤ 2 && g == (2, 2)

end Web

def Act.admitted (a : Act) (w : Web) (x y : Nat) : Bool :=
  match a.kind, a.dir with
  | .attach, .forward => w.attachAdmitted x y a.genre
  | .attach, .inverse => w.attachInvAdmitted x y a.genre
  | .joinWithin, .forward => w.joinWithinAdmitted x y a.genre
  | .joinWithin, .inverse => w.joinWithinInvAdmitted x y a.genre
  | .joinAcross, .forward => w.joinAcrossAdmitted x y a.genre
  | .joinAcross, .inverse => w.joinAcrossInvAdmitted x y a.genre
  | .hubForm, .forward => w.hubFormAdmitted x y a.genre
  | .hubForm, .inverse => w.hubSplitAdmitted x a.genre

def Act.rewrite (a : Act) (w : Web) (x y : Nat) : Web :=
  match a.kind, a.dir with
  | .attach, .forward => w.attach x y
  | .attach, .inverse => w.attachInv x y
  | .joinWithin, .forward => w.join x y
  | .joinWithin, .inverse => w.eraseLink x y
  | .joinAcross, .forward => w.join x y
  | .joinAcross, .inverse => w.eraseLink x y
  | .hubForm, .forward => w.hubForm x y
  | .hubForm, .inverse => w.hubSplit x

def Act.apply (a : Act) (w : Web) (x y : Nat) : Option Web :=
  if a.admitted w x y then some (a.rewrite w x y) else none

def Act.args (a : Act) (w : Web) : List (Nat × Nat) :=
  match a.kind, a.dir with
  | .attach, .forward => (List.range w.sites).flatMap (fun q => [(q, 2), (q, 3), (q, 4)])
  | .attach, .inverse => (List.range w.sites).flatMap (fun q => (List.range w.sites).map (fun r => (q, r)))
  | .hubForm, .inverse => (List.range w.sites).map (fun h => (h, 0))
  | _, _ => (List.range w.sites).flatMap (fun q => ((List.range w.sites).filter (fun r => q < r)).map (fun r => (q, r)))

def Act.instances (a : Act) (w : Web) : List (Nat × Nat) := (a.args w).filter (fun p => a.admitted w p.1 p.2)

def siteDelta (w v : Web) : Int := (v.sites : Int) - (w.sites : Int)

def linkDelta (w v : Web) : Int := (v.links.length : Int) - (w.links.length : Int)

end ActClosure
