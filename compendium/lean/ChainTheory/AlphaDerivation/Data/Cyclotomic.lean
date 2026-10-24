set_option maxRecDepth 100000

namespace AlphaDerivation

structure C12 where
  a0 : Int
  a1 : Int
  a2 : Int
  a3 : Int
deriving DecidableEq, Repr

namespace C12

def zero : C12 := ⟨0, 0, 0, 0⟩

def one : C12 := ⟨1, 0, 0, 0⟩

def zeta : C12 := ⟨0, 1, 0, 0⟩

def ofInt (n : Int) : C12 := ⟨n, 0, 0, 0⟩

def add (x y : C12) : C12 := ⟨x.a0 + y.a0, x.a1 + y.a1, x.a2 + y.a2, x.a3 + y.a3⟩

def neg (x : C12) : C12 := ⟨-x.a0, -x.a1, -x.a2, -x.a3⟩

def sub (x y : C12) : C12 := add x (neg y)

def mul (x y : C12) : C12 :=
  let c0 := x.a0 * y.a0
  let c1 := x.a0 * y.a1 + x.a1 * y.a0
  let c2 := x.a0 * y.a2 + x.a1 * y.a1 + x.a2 * y.a0
  let c3 := x.a0 * y.a3 + x.a1 * y.a2 + x.a2 * y.a1 + x.a3 * y.a0
  let c4 := x.a1 * y.a3 + x.a2 * y.a2 + x.a3 * y.a1
  let c5 := x.a2 * y.a3 + x.a3 * y.a2
  let c6 := x.a3 * y.a3
  ⟨c0 - c4 - c6, c1 - c5, c2 + c4, c3 + c5⟩

def conj (x : C12) : C12 := ⟨x.a0 + x.a2, x.a1, -x.a2, -(x.a1 + x.a3)⟩

def zetaPow : Nat → C12
  | 0 => one
  | k + 1 => mul zeta (zetaPow k)

def iu : C12 := ⟨0, 0, 0, 1⟩

def omega : C12 := ⟨-1, 0, 1, 0⟩

def isZero (x : C12) : Bool := x == zero
end C12

abbrev CV := List C12

abbrev CM := List (List C12)

namespace CV

def dot (u v : CV) : C12 := (List.zipWith C12.mul u v).foldl C12.add C12.zero

def inner (u v : CV) : C12 := dot (u.map C12.conj) v

def smul (c : C12) (v : CV) : CV := v.map (C12.mul c)

def isZero (v : CV) : Bool := v.all C12.isZero

def entry (v : CV) (i : Nat) : C12 := v.getD i C12.zero

def parallel (u v : CV) : Bool :=
  (List.range u.length).all fun i => (List.range u.length).all fun j =>
    C12.isZero (C12.sub (C12.mul (entry u i) (entry v j)) (C12.mul (entry u j) (entry v i)))

def minor2 (u v : CV) (i j : Nat) : C12 := C12.sub (C12.mul (entry u i) (entry v j)) (C12.mul (entry u j) (entry v i))
end CV

namespace CM

def mulVec (a : CM) (v : CV) : CV := a.map fun r => CV.dot r v

def mk (n : Nat) (f : Nat → Nat → C12) : CM := (List.range n).map fun i => (List.range n).map fun j => f i j

def transposeN (n : Nat) (m : CM) : CM := (List.range n).map fun j => m.map fun r => r.getD j C12.zero

def mulN (n : Nat) (a b : CM) : CM := let bt := transposeN n b; a.map fun r => bt.map fun c => CV.dot r c

def smul (c : C12) (a : CM) : CM := a.map fun r => r.map (C12.mul c)

def entry (a : CM) (i j : Nat) : C12 := (a.getD i []).getD j C12.zero

def det3 (a : CM) : C12 :=
  let e := entry a
  let t (i j k : Nat) := C12.mul (e 0 i) (C12.mul (e 1 j) (e 2 k))
  C12.add (C12.sub (C12.add (t 0 1 2) (t 1 2 0)) (C12.sub (t 1 0 2) (t 2 1 0))) (C12.sub (t 2 0 1) (t 0 2 1))

def identity (n : Nat) : CM := mk n fun i j => if i == j then C12.one else C12.zero
end CM

end AlphaDerivation
