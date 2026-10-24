set_option maxRecDepth 100000

namespace ChainTheory.Data.D535091_HGDN

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "eqhg.face", value := "A" },
  { key := "eqhg.letter", value := "EXPONENTIAL-TOWARD-THE-CAP" },
  { key := "eqhg.first.parting", value := "NONE" },
  { key := "cell.C-DENS", value := "YES" },
  { key := "cell.C-GRWT", value := "YES" },
  { key := "cell.C-GIBB", value := "YES" },
  { key := "cell.C-EQHG", value := "YES" }
]

theorem check_1 : rows.length = 7 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "eqhg.face" && r.value == "A")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqhg.letter" && r.value == "EXPONENTIAL-TOWARD-THE-CAP")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqhg.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "cell.C-DENS" && r.value == "YES")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "cell.C-GRWT" && r.value == "YES")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "cell.C-GIBB" && r.value == "YES")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "cell.C-EQHG" && r.value == "YES")).length = 1 := by decide

theorem checks :
    (rows.length = 7) /\
    ((rows.filter (fun r => r.key == "eqhg.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhg.letter" && r.value == "EXPONENTIAL-TOWARD-THE-CAP")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhg.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-DENS" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-GRWT" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-GIBB" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQHG" && r.value == "YES")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (check_8)))))))

end ChainTheory.Data.D535091_HGDN
