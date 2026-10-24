set_option autoImplicit false

namespace KernelDerivationC

structure Q where
  num : Int
  den : Nat
deriving Repr, BEq, DecidableEq

namespace Q

def ofInt (n : Int) : Q := ⟨n, 1⟩

def ofNat (n : Nat) : Q := ⟨Int.ofNat n, 1⟩

def norm (q : Q) : Q :=
  let g := Nat.gcd q.num.natAbs q.den
  if g = 0 then ⟨0, 1⟩ else ⟨q.num / Int.ofNat g, q.den / g⟩

def add (a b : Q) : Q := norm ⟨a.num * Int.ofNat b.den + b.num * Int.ofNat a.den, a.den * b.den⟩

def mul (a b : Q) : Q := norm ⟨a.num * b.num, a.den * b.den⟩

def neg (a : Q) : Q := ⟨-a.num, a.den⟩

def sub (a b : Q) : Q := add a (neg b)

def divNat (a : Q) (n : Nat) : Q := norm ⟨a.num, a.den * n⟩

def div (a b : Q) : Q :=
  if b.num < 0 then norm ⟨a.num * (-(Int.ofNat b.den)), a.den * b.num.natAbs⟩ else norm ⟨a.num * Int.ofNat b.den, a.den * b.num.natAbs⟩

def eq (a b : Q) : Bool := a.num * Int.ofNat b.den == b.num * Int.ofNat a.den

def isZero (a : Q) : Bool := a.num == 0

def isNeg (a : Q) : Bool := decide (a.num < 0)

def isPos (a : Q) : Bool := decide (0 < a.num)

def sumList (l : List Q) : Q := l.foldl add (ofInt 0)

def str (a : Q) : String :=
  let n := norm a
  if n.den == 1 then toString n.num else toString n.num ++ "/" ++ toString n.den

def words (a : Q) : String :=
  let n := norm a
  if n.den == 1 then toString n.num else toString n.num ++ " over " ++ toString n.den

end Q

structure R3 where
  a : Q
  c : Q
deriving Repr, BEq, DecidableEq

namespace R3

def ofQ (a : Q) : R3 := ⟨a, Q.ofInt 0⟩

def ofNat (n : Nat) : R3 := ⟨Q.ofNat n, Q.ofInt 0⟩

def add (x y : R3) : R3 := ⟨Q.add x.a y.a, Q.add x.c y.c⟩

def mul (x y : R3) : R3 :=
  ⟨Q.add (Q.mul x.a y.a) (Q.mul (Q.ofNat 3) (Q.mul x.c y.c)), Q.add (Q.mul x.a y.c) (Q.mul x.c y.a)⟩

def divNat (x : R3) (n : Nat) : R3 := ⟨Q.divNat x.a n, Q.divNat x.c n⟩

def mulNat (x : R3) (n : Nat) : R3 := ⟨Q.mul x.a (Q.ofNat n), Q.mul x.c (Q.ofNat n)⟩

def eq (x y : R3) : Bool := Q.eq x.a y.a && Q.eq x.c y.c

def str (x : R3) : String := Q.str x.a ++ "|0|" ++ Q.str x.c ++ "|0"

def words (x : R3) : String := Q.words x.a ++ " plus " ++ Q.words x.c ++ " root 3"

end R3

structure QI where
  re : Q
  im : Q
deriving Repr, BEq, DecidableEq

namespace QI

def ofQ (a : Q) : QI := ⟨a, Q.ofInt 0⟩

def ofInt (n : Int) : QI := ⟨Q.ofInt n, Q.ofInt 0⟩

def imag (a : Q) : QI := ⟨Q.ofInt 0, a⟩

def add (x y : QI) : QI := ⟨Q.add x.re y.re, Q.add x.im y.im⟩

def sub (x y : QI) : QI := ⟨Q.sub x.re y.re, Q.sub x.im y.im⟩

def mul (x y : QI) : QI := ⟨Q.sub (Q.mul x.re y.re) (Q.mul x.im y.im), Q.add (Q.mul x.re y.im) (Q.mul x.im y.re)⟩

def neg (x : QI) : QI := ⟨Q.neg x.re, Q.neg x.im⟩

def isZero (x : QI) : Bool := Q.isZero x.re && Q.isZero x.im

def sumList (l : List QI) : QI := l.foldl add (ofInt 0)

end QI

abbrev Mat (α : Type) : Type := List (List α)

namespace Mat

def entry {α : Type} (z : α) (m : Mat α) (i j : Nat) : α := (m.getD i []).getD j z

def ofFun {α : Type} (rows cols : Nat) (f : Nat → Nat → α) : Mat α :=
  (List.range rows).map (fun i => (List.range cols).map (fun j => f i j))

def shape {α : Type} (m : Mat α) : Nat × Nat := (m.length, (m.headD []).length)

def transpose {α : Type} (z : α) (m : Mat α) : Mat α :=
  ofFun (shape m).2 (shape m).1 (fun i j => entry z m j i)

end Mat

abbrev MatQ := Mat Q

namespace MatQ

def at_ (m : MatQ) (i j : Nat) : Q := Mat.entry (Q.ofInt 0) m i j

def ofFun (rows cols : Nat) (f : Nat → Nat → Q) : MatQ := Mat.ofFun rows cols f

def mul (m n : MatQ) : MatQ :=
  let k := (Mat.shape m).2
  ofFun (Mat.shape m).1 (Mat.shape n).2 (fun i j => Q.sumList ((List.range k).map (fun l => Q.mul (at_ m i l) (at_ n l j))))

def add (m n : MatQ) : MatQ := ofFun (Mat.shape m).1 (Mat.shape m).2 (fun i j => Q.add (at_ m i j) (at_ n i j))

def sub (m n : MatQ) : MatQ := ofFun (Mat.shape m).1 (Mat.shape m).2 (fun i j => Q.sub (at_ m i j) (at_ n i j))

def scale (q : Q) (m : MatQ) : MatQ := ofFun (Mat.shape m).1 (Mat.shape m).2 (fun i j => Q.mul q (at_ m i j))

def transpose (m : MatQ) : MatQ := Mat.transpose (Q.ofInt 0) m

def bracket (m n : MatQ) : MatQ := sub (mul m n) (mul n m)

def zero (rows cols : Nat) : MatQ := ofFun rows cols (fun _ _ => Q.ofInt 0)

def identity (n : Nat) : MatQ := ofFun n n (fun i j => if i == j then Q.ofInt 1 else Q.ofInt 0)

def isZero (m : MatQ) : Bool := m.all (fun r => r.all Q.isZero)

def eq (m n : MatQ) : Bool := Mat.shape m == Mat.shape n && (List.range (Mat.shape m).1).all (fun i => (List.range (Mat.shape m).2).all (fun j => Q.eq (at_ m i j) (at_ n i j)))

def trace (m : MatQ) : Q := Q.sumList ((List.range (Mat.shape m).1).map (fun i => at_ m i i))

def apply (m : MatQ) (v : List Q) : List Q :=
  (List.range (Mat.shape m).1).map (fun i => Q.sumList ((List.range (Mat.shape m).2).map (fun j => Q.mul (at_ m i j) (v.getD j (Q.ofInt 0)))))

def str (m : MatQ) : String := String.intercalate ";" (m.map (fun r => String.intercalate "," (r.map Q.str)))

def eliminateColumn (m : MatQ) (pivotRow col : Nat) : MatQ × Nat :=
  let rows := (Mat.shape m).1
  match (List.range rows).find? (fun i => decide (pivotRow ≤ i) && !(Q.isZero (at_ m i col))) with
  | none => (m, pivotRow)
  | some p =>
    let swapped := ofFun rows (Mat.shape m).2 (fun i j => if i == pivotRow then at_ m p j else if i == p then at_ m pivotRow j else at_ m i j)
    let pv := at_ swapped pivotRow col
    let cleared := ofFun rows (Mat.shape m).2 (fun i j =>
      if i == pivotRow then at_ swapped i j
      else Q.sub (at_ swapped i j) (Q.mul (Q.div (at_ swapped i col) pv) (at_ swapped pivotRow j)))
    (cleared, pivotRow + 1)

def rank (m : MatQ) : Nat :=
  ((List.range (Mat.shape m).2).foldl (fun (acc : MatQ × Nat) col => eliminateColumn acc.1 acc.2 col) (m, 0)).2

end MatQ

abbrev MatQI := Mat QI

namespace MatQI

def at_ (m : MatQI) (i j : Nat) : QI := Mat.entry (QI.ofInt 0) m i j

def ofFun (rows cols : Nat) (f : Nat → Nat → QI) : MatQI := Mat.ofFun rows cols f

def mul (m n : MatQI) : MatQI :=
  let k := (Mat.shape m).2
  ofFun (Mat.shape m).1 (Mat.shape n).2 (fun i j => QI.sumList ((List.range k).map (fun l => QI.mul (at_ m i l) (at_ n l j))))

def add (m n : MatQI) : MatQI := ofFun (Mat.shape m).1 (Mat.shape m).2 (fun i j => QI.add (at_ m i j) (at_ n i j))

def sub (m n : MatQI) : MatQI := ofFun (Mat.shape m).1 (Mat.shape m).2 (fun i j => QI.sub (at_ m i j) (at_ n i j))

def scale (q : QI) (m : MatQI) : MatQI := ofFun (Mat.shape m).1 (Mat.shape m).2 (fun i j => QI.mul q (at_ m i j))

def bracket (m n : MatQI) : MatQI := sub (mul m n) (mul n m)

def trace (m : MatQI) : QI := QI.sumList ((List.range (Mat.shape m).1).map (fun i => at_ m i i))

def traceOfProduct (m n : MatQI) : QI :=
  QI.sumList ((List.range (Mat.shape m).1).flatMap (fun i => (List.range (Mat.shape m).2).map (fun l => QI.mul (at_ m i l) (at_ n l i))))

def dagger (m : MatQI) : MatQI := ofFun (Mat.shape m).2 (Mat.shape m).1 (fun i j => ⟨(at_ m j i).re, Q.neg (at_ m j i).im⟩)

def eq (m n : MatQI) : Bool := Mat.shape m == Mat.shape n && (List.range (Mat.shape m).1).all (fun i => (List.range (Mat.shape m).2).all (fun j => Q.eq (at_ m i j).re (at_ n i j).re && Q.eq (at_ m i j).im (at_ n i j).im))

def isZero (m : MatQI) : Bool := m.all (fun r => r.all QI.isZero)

def identity (n : Nat) : MatQI := ofFun n n (fun i j => if i == j then QI.ofInt 1 else QI.ofInt 0)

def kroneckerIdentity (m : MatQI) (d : Nat) : MatQI :=
  ofFun ((Mat.shape m).1 * d) ((Mat.shape m).2 * d) (fun i j => if Nat.mod i d == Nat.mod j d then at_ m (i / d) (j / d) else QI.ofInt 0)

def ofQ (m : MatQ) : MatQI := m.map (fun r => r.map QI.ofQ)

def isHermitian (m : MatQI) : Bool := eq m (dagger m)

def isAntiHermitian (m : MatQI) : Bool := eq m (scale (QI.ofInt (-1)) (dagger m))

def isTraceless (m : MatQI) : Bool := QI.isZero (trace m)

end MatQI

end KernelDerivationC
