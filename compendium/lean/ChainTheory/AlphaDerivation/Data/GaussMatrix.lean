set_option maxRecDepth 100000

namespace AlphaDerivation

structure G where
  re : Int
  im : Int
deriving DecidableEq, Repr

namespace G

def add (a b : G) : G := ⟨a.re + b.re, a.im + b.im⟩

def mul (a b : G) : G := ⟨a.re * b.re - a.im * b.im, a.re * b.im + a.im * b.re⟩

def neg (a : G) : G := ⟨-a.re, -a.im⟩

def sub (a b : G) : G := add a (neg b)

def conj (a : G) : G := ⟨a.re, -a.im⟩

def zero : G := ⟨0, 0⟩

def one : G := ⟨1, 0⟩

def iu : G := ⟨0, 1⟩

def ofInt (n : Int) : G := ⟨n, 0⟩

def phase (k : Nat) : G := match k % 4 with
  | 0 => ⟨1, 0⟩ | 1 => ⟨0, 1⟩ | 2 => ⟨-1, 0⟩ | _ => ⟨0, -1⟩
end G

abbrev GM := List (List G)

namespace GM

def dot (r c : List G) : G := (List.zipWith G.mul r c).foldl G.add G.zero

def transposeN (n : Nat) (m : GM) : GM := (List.range n).map (fun j => m.map (fun r => r.getD j G.zero))

def mulN (n : Nat) (a b : GM) : GM := let bt := transposeN n b; a.map (fun r => bt.map (fun c => dot r c))

def mk (n : Nat) (f : Nat → Nat → G) : GM := (List.range n).map (fun i => (List.range n).map (fun j => f i j))

def identity (n : Nat) : GM := mk n (fun i j => if i == j then G.one else G.zero)

def unit (n a b : Nat) : GM := mk n (fun i j => if i == a && j == b then G.one else G.zero)

def add (a b : GM) : GM := List.zipWith (fun r s => List.zipWith G.add r s) a b

def sub (a b : GM) : GM := List.zipWith (fun r s => List.zipWith G.sub r s) a b

def smul (c : G) (a : GM) : GM := a.map (fun r => r.map (G.mul c))

def neg (a : GM) : GM := smul (G.ofInt (-1)) a

def adjoint (n : Nat) (a : GM) : GM := (transposeN n a).map (fun r => r.map G.conj)

def conj (a : GM) : GM := a.map (fun r => r.map G.conj)

def trace (a : GM) : G := (a.mapIdx (fun i r => r.getD i G.zero)).foldl G.add G.zero

def comm (n : Nat) (a b : GM) : GM := sub (mulN n a b) (mulN n b a)

def kron (m n : Nat) (a b : GM) : GM :=
  (List.range (m * n)).map (fun i => (List.range (m * n)).map (fun j =>
    G.mul ((a.getD (i / n) []).getD (j / n) G.zero) ((b.getD (i % n) []).getD (j % n) G.zero)))

def zeroM (n : Nat) : GM := mk n (fun _ _ => G.zero)

def isZero (a : GM) : Bool := a.all (fun r => r.all (fun x => x == G.zero))

def entry (a : GM) (i j : Nat) : G := (a.getD i []).getD j G.zero

def mulVec (a : GM) (v : List G) : List G := a.map (fun r => dot r v)

def smulVec (c : G) (v : List G) : List G := v.map (G.mul c)

def inner (u v : List G) : G := dot (u.map G.conj) v

def outer (v : List G) : GM := v.map (fun x => v.map (fun y => G.mul x (G.conj y)))
end GM

abbrev ZM := List (List Int)

namespace ZM

def dot (r c : List Int) : Int := (List.zipWith (· * ·) r c).foldl (· + ·) 0

def transposeN (n : Nat) (m : ZM) : ZM := (List.range n).map (fun j => m.map (fun r => r.getD j 0))

def mulN (n : Nat) (a b : ZM) : ZM := let bt := transposeN n b; a.map (fun r => bt.map (fun c => dot r c))

def mulVec (a : ZM) (v : List Int) : List Int := a.map (fun r => dot r v)

def entry (a : ZM) (i j : Nat) : Int := (a.getD i []).getD j 0

def minor (a : ZM) (rows cols : List Nat) : ZM := rows.map (fun i => cols.map (fun j => entry a i j))

def bareissStep (prev : Int) (pivot : List Int) (k : Nat) (r : List Int) : List Int :=
  let pk := pivot.getD k 0
  let rk := r.getD k 0
  (List.range r.length).map (fun j => if j < k then 0 else (r.getD j 0 * pk - rk * pivot.getD j 0) / prev)

def bareiss : ZM → Int := fun a =>
  let n := a.length
  let rec go (k : Nat) (prev : Int) (rows : ZM) (fuel : Nat) : Int := match fuel with
    | 0 => 0
    | fuel + 1 =>
      if k ≥ n then prev else
      match rows.findIdx? (fun r => r.getD k 0 != 0) with
      | none => 0
      | some pi =>
        let pivot := rows.getD pi []
        let sign : Int := if pi == 0 then 1 else -1
        let rest := (rows.eraseIdx pi).map (fun r => bareissStep prev pivot k r)
        let d := go (k + 1) (pivot.getD k 0) rest fuel
        sign * d
  go 0 1 a (n + 1)

def det (a : ZM) : Int := bareiss a
end ZM

namespace G

def div (a b : G) : G :=
  let n := b.re * b.re + b.im * b.im
  let c := mul a (conj b)
  ⟨c.re / n, c.im / n⟩
end G

namespace GM

def gstep (prev pk rk : G) (pivotTail rTail : List G) : List G :=
  List.zipWith (fun rj pj => G.div (G.sub (G.mul rj pk) (G.mul rk pj)) prev) rTail pivotTail

def bareissG (a : GM) : G :=
  let rec go (prev : G) (rows : GM) (fuel : Nat) : G := match fuel with
    | 0 => prev
    | fuel + 1 => match rows with
      | [] => prev
      | _ => match rows.findIdx? (fun r => r.headD G.zero != G.zero) with
        | none => G.zero
        | some pi =>
          let pivot := rows.getD pi []
          let pk := pivot.headD G.zero
          let rest := (rows.eraseIdx pi).map fun r => gstep prev pk (r.headD G.zero) pivot.tail r.tail
          let s := if pi % 2 == 0 then G.one else G.ofInt (-1)
          G.mul s (go pk rest fuel)
  go G.one a (a.length + 1)

def flatten (a : GM) : List G := a.flatMap id

def selectRows (a : GM) (rows : List Nat) : GM := rows.map (fun i => a.getD i [])

def selectCols (a : GM) (cols : List Nat) : GM := a.map (fun r => cols.map (fun j => r.getD j G.zero))

def monoCol (g : GM) (u : Nat) : Nat := ((g.getD u []).findIdx? (fun x => x != G.zero)).getD 0

def monoPhase (g : GM) (u : Nat) : G := entry g u (monoCol g u)

def entryComm (n : Nat) (g : GM) (u v : Nat) : GM :=
  mk n (fun a b => G.sub (if b == v && monoCol g a == u then monoPhase g a else G.zero)
                         (if a == u && monoCol g v == b then monoPhase g v else G.zero))

def isMonomial (n : Nat) (g : GM) : Bool :=
  g.length == n && g.all (fun r => r.length == n && (r.filter (fun x => x != G.zero)).length == 1)
end GM

end AlphaDerivation
