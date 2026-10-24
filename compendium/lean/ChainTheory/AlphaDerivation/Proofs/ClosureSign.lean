import AlphaDerivation.Data.GaussMatrix
import AlphaDerivation.Data.Expected

set_option maxRecDepth 100000

namespace AlphaDerivation
namespace ClosureSign
open GM

def X : GM := [[G.zero, G.one], [G.one, G.zero]]

def Z : GM := [[G.one, G.zero], [G.zero, G.ofInt (-1)]]

def XZ : GM := mulN 2 X Z

def pairs : List (String × GM × GM) := [("W10.W11", X, XZ), ("W01.W10", Z, X), ("W01.W11", Z, XZ)]

def orderSign (u v : GM) : Int :=
  if mulN 2 v u == neg (mulN 2 u v) then -1 else if mulN 2 v u == mulN 2 u v then 1 else 0

def antisym (u v : GM) : GM := sub (mulN 2 u v) (mulN 2 v u)

def sym (u v : GM) : GM := add (mulN 2 u v) (mulN 2 v u)

def swap2 : GM := mk 4 (fun i j => if j == (i % 2) * 2 + i / 2 then G.one else G.zero)

def T (u v : GM) : GM := kron 2 2 u v

def swapEigen (A : GM) : Int :=
  let c := mulN 4 (mulN 4 swap2 A) swap2
  if c == neg A then -1 else if c == A then 1 else 0

def compose (terms : List (Int × GM × GM)) : GM :=
  terms.foldl (fun acc t => add acc (smul (G.ofInt t.1) (mulN 2 t.2.1 t.2.2))) (zeroM 2)

def pairKet2 : List G := [G.one, G.zero, G.zero, G.one]

def transpose2 (a : GM) : GM := transposeN 2 a

def transports (a : GM) : Bool :=
  mulVec (kron 2 2 a (identity 2)) pairKet2 == mulVec (kron 2 2 (identity 2) (transpose2 a)) pairKet2

def exchangeFar (u v : GM) : Int := swapEigen (sub (T u v) (T v u))

def exchangeCentre (u v : GM) : Int := swapEigen (sub (T (transpose2 u) (transpose2 v)) (T (transpose2 v) (transpose2 u)))

def closureExchanges : List (Int × Int) := pairs.map fun p => (exchangeCentre p.2.1 p.2.2, exchangeFar p.2.1 p.2.2)

theorem weyl_relation :
    mulN 2 Z X = neg (mulN 2 X Z) ∧ Expected.weylOmega = -1 ∧
    pairs.all (fun p => orderSign p.2.1 p.2.2 == -1) = true ∧
    pairs.all (fun p => !(isZero (mulN 2 p.2.1 p.2.2)) && isZero (sym p.2.1 p.2.2) && !(isZero (antisym p.2.1 p.2.2))) = true ∧
    trace X = G.zero ∧ trace Z = G.zero ∧ trace XZ = G.zero := by decide +kernel

theorem two_copy_realisation :
    pairs.all (fun p => let u := p.2.1; let v := p.2.2
      mulN 4 (mulN 4 swap2 (T u v)) swap2 == T v u && swapEigen (T u v) == 0 &&
      swapEigen (sub (T u v) (T v u)) == -1 && swapEigen (add (T u v) (T v u)) == 1 &&
      compose [(1, u, v), (-1, v, u)] == antisym u v && isZero (compose [(1, u, v), (1, v, u)])) = true := by decide +kernel

theorem transport :
    transports X = true ∧ transports Z = true ∧ transports XZ = true ∧
    pairs.all (fun p => exchangeCentre p.2.1 p.2.2 == -1) = true := by decide +kernel

theorem closure_sign :
    closureExchanges = Expected.closureEigenvalues ∧
    pairs.all (fun p => orderSign p.2.1 p.2.2 == exchangeFar p.2.1 p.2.2 && orderSign p.2.1 p.2.2 == exchangeCentre p.2.1 p.2.2) = true ∧
    Expected.weylCommutatorMap.all (fun m => pairs.any (fun p => p.1 == m.1)) = true ∧
    pairs.all (fun p => Expected.weylCommutatorMap.any (fun m => m.1 == p.1)) = true ∧
    Expected.weylCommutatorMap.all (fun m => Expected.closureIds.contains m.2.1) = true ∧
    Expected.closureIds.all (fun i => Expected.weylCommutatorMap.any (fun m => m.2.1 == i)) = true ∧
    closureExchanges.length = 3 ∧ Expected.closureSignClause.all (fun c => c.2 == -1) = true ∧
    Expected.closureCopyExchange.all (fun c => c.2.1 == -1 && c.2.2 == -1) = true := by decide +kernel

end ClosureSign
end AlphaDerivation
