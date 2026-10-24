namespace AlphaDerivation

structure Q4 where
  c1 : Int
  c2 : Int
  c3 : Int
  c6 : Int
deriving DecidableEq, Repr

namespace Q4

def mul (a b : Q4) : Q4 where
  c1 := a.c1 * b.c1 + 2 * a.c2 * b.c2 + 3 * a.c3 * b.c3 + 6 * a.c6 * b.c6
  c2 := a.c1 * b.c2 + a.c2 * b.c1 + 3 * (a.c3 * b.c6 + a.c6 * b.c3)
  c3 := a.c1 * b.c3 + a.c3 * b.c1 + 2 * (a.c2 * b.c6 + a.c6 * b.c2)
  c6 := a.c1 * b.c6 + a.c6 * b.c1 + a.c2 * b.c3 + a.c3 * b.c2

def smul (n : Int) (a : Q4) : Q4 where
  c1 := n * a.c1
  c2 := n * a.c2
  c3 := n * a.c3
  c6 := n * a.c6

def sigma2 (a : Q4) : Q4 := ⟨a.c1, -a.c2, a.c3, -a.c6⟩

def sigma3 (a : Q4) : Q4 := ⟨a.c1, a.c2, -a.c3, -a.c6⟩

def sigma23 (a : Q4) : Q4 := ⟨a.c1, -a.c2, -a.c3, a.c6⟩

def one : Q4 := ⟨1, 0, 0, 0⟩

def add (a b : Q4) : Q4 := ⟨a.c1 + b.c1, a.c2 + b.c2, a.c3 + b.c3, a.c6 + b.c6⟩

def zero : Q4 := ⟨0, 0, 0, 0⟩

def root2 : Q4 := ⟨0, 1, 0, 0⟩

def root3 : Q4 := ⟨0, 0, 1, 0⟩

def root6 : Q4 := ⟨0, 0, 0, 1⟩

end Q4
end AlphaDerivation
