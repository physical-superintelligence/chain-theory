namespace AlphaDerivation
namespace Expected

def recordCount : Nat := 172

def rosterCount : Nat := 169

def fixedCount : Nat := 11

def orbitCount : Nat := 79

def reentryCount : Nat := 3

def blocks : List Nat := [24, 24, 64, 24, 24, 9]

def slotDims : List Nat := [8, 3, 8, 3]

def slotMixed : Nat := 96

def slotOneEnd : Nat := 76

def sectorOdd : Nat := 79

def sectorEvenMixed : Nat := 48

def sectorEvenSame : Nat := 42

def sectorClosure : Nat := 3

def histogram : List (Nat × Nat) := [(1, 79), (2, 48), (3, 42), (6, 3)]

def weightBySector : List (String × Nat) := [("ODD", 1), ("EVEN-MIXED", 2), ("EVEN-SAME", 3), ("CLOSURE", 6)]

def endMap : String := "X:centre:3;Y:far:2"

def closureIds : List String := ["R170", "R171", "R172"]

def closureEigenvalues : List (Int × Int) := [(-1, -1), (-1, -1), (-1, -1)]

def closureCount : Nat := 6

def composedZero : String := "172 of 172"

def registerWhole : Nat := 36

def registerCut : Nat := 24

def registerDimR : Nat := 31104

def oneLinkRegister : Nat := 6

def closedFormNum : List Int := [79, 48, 42, 3]

def closedFormDen : Nat := 31104

def alphaBare : Nat := 1

def z2OverZ1 : Nat := 1

def dressingRatiosAllOne : String := "1,1,1,1,1"

def commutantDims : List Nat := [3, 3, 3]

def haarDims : List Nat := [2, 2, 2]

def groupOrders : List Nat := [32, 384, 6144]

def orbitsTotal : List Nat := [8, 14, 15]

def orbitsInconsistent : List Nat := [5, 11, 12]

def twirlFixedDims : List Nat := [2, 2]

def fixedVectorDims : List Nat := [1, 1]

def pureFixedStates : List Nat := [1, 1]

def eigenspaceDims2 : String := "1,3"

def pairKetAmplitudeSq : List (Nat × Nat) := [(1, 2), (1, 3)]

def centreDims : List Nat := [1, 1]

def centreGenerator23 : List Int := [3,3,-2,-2,-2]

def centreGenerator22 : List Int := [1,1,-1,-1]

def pairScalars : List Int := [0, 1]

def killingRank23 : Nat := 11

def tensorCommutantDim23 : Nat := 1

def readableGenres : List (Nat × Nat) := [(2, 2), (2, 3)]

def actingGenres : List (Nat × Nat) := [(2, 3)]

def readCap : Nat := 6

def allFourObjects : List String := ["G23.open"]

def allFourCount : Nat := 1

def spinG23Cut : String := "24|2:8"

def spinG22Cut : String := "9|0:1;2:1;4:1"

def massG23OpenDisp : String := "-1,1,0"

def photonClosure : String := "OPEN"

def photonChainSum : Nat := 0

def wardRecordIdentity : String := "172 of 172"

def wardLinkPaths : String := "48 of 48"

def gateMasked : String := "8785c8ce844540a7"

def closureSignClause : List (String × Int) := [("R170", -1), ("R171", -1), ("R172", -1)]

def closureCopyExchange : List (String × Int × Int) := [("R170", -1, -1), ("R171", -1, -1), ("R172", -1, -1)]

def weylOmega : Int := -1

def weylCommutatorMap : List (String × String × Int) := [("W01.W10", "R171", -1), ("W01.W11", "R172", 1), ("W10.W11", "R170", -1)]

def orbitRecords : Nat := 79

def fixedRecords : Nat := 11

def buildCensus : List (String × Nat) := [("EVEN-ORBIT", 79), ("FIXED", 11), ("ODD-ORBIT", 79), ("REENTRY", 3)]

def endsCensus : List (String × Nat) := [("centre+centre", 64), ("centre+far", 96), ("far+far", 12)]

def jointGroupOrder : Nat := 12288

def recordsFixedUnderGroup : Nat := 1

def recordFixedUnderGroupId : String := "R169"

def readingsCount : Nat := 41

def readingsPath : Nat := 32

def readingsSingle : Nat := 8

def readingsOpen : Nat := 1

def readingsHoldingAtUnit : String := "41 of 41"

def readingsHoldingAtWall : String := "0 of 41"

def passageCensusByLength : List Nat := [0, 0, 0, 0, 0, 0]

def passageCap : Nat := 6

def commonSupport : Nat := 2

def supportRegister : Nat := 16

def admittedUnits : List Nat := [16, 24, 36, 6, 201, 67]

def openReadoutCanon : Nat := 0

def firstPowerOpen : Nat := 0

def adMatrices : List (List (List Int)) := [[[0, 0, 0], [0, 0, -1], [0, 1, 0]], [[0, 0, 1], [0, 0, 0], [-1, 0, 0]], [[0, -1, 0], [1, 0, 0], [0, 0, 0]]]

def gramRational : List (List (Int × Int)) := [[(6, 1), (0, 1), (0, 1), (0, 1)], [(0, 1), (-3, 2), (0, 1), (0, 1)], [(0, 1), (0, 1), (-3, 2), (0, 1)], [(0, 1), (0, 1), (0, 1), (-3, 2)]]

def isometryAlgebraDim : Nat := 6

def stabiliserAlgebraDim : Nat := 3

def adBracketsEpsilon : String := "9 of 9"

def adAntisymmetric : String := "3 of 3"

def unitFixed : String := "YES"

def signatureG23 : String := "1,3"

def ratioG23 : Int := -4

def unitTraceG23 : Nat := 6

def farBasisOfSupport : List (String × Bool) := [("Z", true), ("X", false), ("XZ", false), ("XZ2", false)]

def farNonzero : List (String × Nat) := [("Z", 2), ("X", 3), ("XZ", 3), ("XZ2", 3)]

def farOrthogonal : List (String × Bool) := [("Z", true), ("X", false), ("XZ", false), ("XZ2", false)]

def washedRead : String := "Z"

def selectedDirection : String := "Z"

def fixedCountAtWashed : Nat := 1

def transverseDimAtWashed : Nat := 2

def transverseCount : Nat := 2

def fullTripleAtOpenReads : String := "X:3;XZ:3;XZ2:3"

def helicityLetter : String := "TWO"

def xzUnitIndex : Nat := 9

def momentumEndValue2 : Int × Int × Int := (1, 0, 0)

def momentumEndValue3 : Int × Int × Int := (0, 1, 0)

def stepEnterQubit : Int × Int × Int := (1, -1, 0)

def stepEnterQutrit : Int × Int × Int := (-1, 1, 0)

def stepComposed : Int × Int × Int := (0, 0, 0)

def zeroAtZeroTransfer : String := "YES"

end Expected
end AlphaDerivation
