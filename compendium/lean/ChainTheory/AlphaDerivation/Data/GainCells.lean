namespace AlphaDerivation
namespace GainCells

def passedEndCensus : List (String × Nat) := [("none", 79), ("qubit", 48), ("qutrit", 42), ("both", 3)]

def multiplicityCensus : List (Nat × Nat) := [(1, 79), (2, 48), (3, 42), (6, 3)]

def recordEq : String := "172 of 172"

def firstParting : String := "NONE"

def correspondenceDerived : String := "ODD:none;MIXED:far;REPEATED:centre;REENTRY:centre+far"

def endSetSums : List (String × Nat) := [("none", 79), ("qubit", 175), ("qutrit", 205), ("both", 319)]

def endSetExact : List (String × Nat) := [("none", 79), ("qubit", 96), ("qutrit", 126), ("both", 18)]

def supportRankSum : Nat := 319

def sectorGainsCorrespondence : List (String × Nat × Nat) := [("ODD", 79, 1), ("MIXED-EVEN", 48, 2), ("SAME-EVEN", 42, 3), ("CLOSURE", 3, 6)]

def sectorGainsLesserGreater : List (String × Nat × Nat) := [("ODD", 79, 1), ("MIXED-EVEN", 48, 2), ("SAME-EVEN", 42, 3), ("CLOSURE", 3, 6)]

def genreGains : List (Nat × Nat) := [(1, 79), (2, 48), (3, 42), (6, 3)]

def genreBorn : Nat := 319

def genreN : List Int := [79, 48, 42, 3]

def candidateCount : Nat := 246

def matchCount : Nat := 246

def eqglFirstParting : String := "NONE"

end GainCells
end AlphaDerivation
