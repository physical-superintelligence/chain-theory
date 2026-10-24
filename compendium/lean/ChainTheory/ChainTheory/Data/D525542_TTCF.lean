set_option maxRecDepth 100000

namespace ChainTheory.Data.D525542_TTCF

structure Row where
  id : String
  row : Int
  phase_input : String
  reads_face : String
  eq : String
deriving Repr

def rows : List Row := [
  { id := "PKPH.D1.fixedpoint", row := 521809, phase_input := "the fourth-root phases of the group", reads_face := "NO", eq := "YES" },
  { id := "PKPH.D1.oneend", row := 521809, phase_input := "the scalar fourth roots", reads_face := "NO", eq := "YES" },
  { id := "PKPH.D1.membership", row := 521809, phase_input := "the eigenphase set against the face", reads_face := "YES", eq := "YES" },
  { id := "PKPH.D2.fixedpoint", row := 521809, phase_input := "the fourth-root phases of the group", reads_face := "NO", eq := "YES" },
  { id := "PKPH.D2.oneend", row := 521809, phase_input := "the scalar fourth roots", reads_face := "NO", eq := "YES" },
  { id := "PKPH.D2.membership", row := 521809, phase_input := "the eigenphase set against the face", reads_face := "YES", eq := "YES" },
  { id := "PKPH.D3.fixedpoint", row := 521809, phase_input := "the fourth-root phases of the group", reads_face := "NO", eq := "YES" },
  { id := "PKPH.D3.oneend", row := 521809, phase_input := "the scalar fourth roots", reads_face := "NO", eq := "YES" },
  { id := "PKPH.D3.membership", row := 521809, phase_input := "the eigenphase set against the face", reads_face := "YES", eq := "YES" },
  { id := "PKPH.D6.fixedpoint", row := 521809, phase_input := "the fourth-root phases of the group", reads_face := "NO", eq := "YES" },
  { id := "PKPH.D6.oneend", row := 521809, phase_input := "the scalar fourth roots", reads_face := "NO", eq := "YES" },
  { id := "PKPH.D6.membership", row := 521809, phase_input := "the eigenphase set against the face", reads_face := "YES", eq := "YES" },
  { id := "FRPK.faces", row := 521809, phase_input := "the pair-ket phase 1 and the eigenphase set", reads_face := "NO", eq := "YES" },
  { id := "FRRU.faces", row := 522422, phase_input := "the root-first trace and the per-end weights", reads_face := "NO", eq := "YES" },
  { id := "FRRU.rootfirst", row := 522422, phase_input := "the amplitude root", reads_face := "NO", eq := "YES" },
  { id := "RMFD.NEAR", row := 520353, phase_input := "the phase of order four i per read", reads_face := "NO", eq := "YES" },
  { id := "RMFD.FAR", row := 520353, phase_input := "the phase of order four i per read", reads_face := "NO", eq := "YES" },
  { id := "RMFD.CONJ", row := 520353, phase_input := "the phase of order four i per read", reads_face := "NO", eq := "YES" },
  { id := "RMFD.EQUAL", row := 520353, phase_input := "the phase of order four i per read", reads_face := "NO", eq := "YES" },
  { id := "RMFD.membership", row := 520353, phase_input := "the phase i against the face", reads_face := "YES", eq := "YES" },
  { id := "RMFD.record.face", row := 520353, phase_input := "the dressing phase", reads_face := "NO", eq := "YES" },
  { id := "CPPC.placements", row := 523828, phase_input := "the datum root of order four at the exponent", reads_face := "NO", eq := "YES" },
  { id := "CPPC.sweep", row := 523828, phase_input := "the twenty-four exponents of the root", reads_face := "NO", eq := "YES" },
  { id := "CPPC.membership", row := 523828, phase_input := "the datum root at its exponent against the face", reads_face := "YES", eq := "YES" },
  { id := "DRLG.states", row := 521053, phase_input := "none in the text of record; a line outside the ledger", reads_face := "NO", eq := "YES" },
  { id := "DRLG.faces", row := 521053, phase_input := "none", reads_face := "NO", eq := "YES" },
  { id := "IPMF.dirs.2,2", row := 522500, phase_input := "the fourth-root phases of the product group", reads_face := "NO", eq := "YES" },
  { id := "IPMF.dirs.2,3", row := 522500, phase_input := "the fourth-root phases of the product group", reads_face := "NO", eq := "YES" },
  { id := "IPMF.dirs.2,4", row := 522500, phase_input := "the fourth-root phases of the product group", reads_face := "NO", eq := "YES" },
  { id := "IPMF.dirs.3,3", row := 522500, phase_input := "the fourth-root phases of the product group", reads_face := "NO", eq := "YES" },
  { id := "IPMF.dirs.3,4", row := 522500, phase_input := "the fourth-root phases of the product group", reads_face := "NO", eq := "YES" },
  { id := "IPMF.dirs.4,4", row := 522500, phase_input := "the fourth-root phases of the product group", reads_face := "NO", eq := "YES" }
]

theorem check_1 : rows.length = 32 := by decide

theorem check_2 : (rows.filter (fun r => r.eq == "YES")).length = 32 := by decide

theorem checks :
    (rows.length = 32) /\
    ((rows.filter (fun r => r.eq == "YES")).length = 32) :=
  And.intro check_1 (check_2)

end ChainTheory.Data.D525542_TTCF
