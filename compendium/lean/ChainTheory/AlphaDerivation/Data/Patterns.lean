set_option maxRecDepth 100000

namespace AlphaDerivation

def tuples : Nat → Nat → List (List Nat)
  | _, 0 => [[]]
  | d, k + 1 => (List.range d).flatMap fun i => (tuples d k).map fun t => i :: t

def pattern (t : List Nat) : List Nat :=
  let rec go (seen : List Nat) (rest : List Nat) : List Nat := match rest with
    | [] => []
    | x :: xs => match seen.idxOf? x with
      | some p => p :: go seen xs
      | none => seen.length :: go (seen ++ [x]) xs
  go [] t

def survives4 (t : List Nat) : Bool := match t with
  | [i, j, k, l] => (i == j && l == k) || (i == k && l == j)
  | _ => false

def survives2 (t : List Nat) : Bool := match t with
  | [i, j] => i == j
  | _ => false

def patterns4 (d : Nat) : List (List Nat) := ((tuples d 4).map pattern).eraseDups

def commutantPatterns (d : Nat) : List (List Nat) := (((tuples d 4).filter survives4).map pattern).eraseDups

def fixedVectorPatterns (d : Nat) : List (List Nat) := (((tuples d 2).filter survives2).map pattern).eraseDups

def factorial : Nat → Nat
  | 0 => 1
  | n + 1 => (n + 1) * factorial n

def groupOrder (d : Nat) : Nat := factorial d * 4 ^ d

end AlphaDerivation
