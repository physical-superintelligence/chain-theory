set_option maxRecDepth 100000

namespace ChainTheory.Data.D535360_NDFE

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "eqfi.record.moves.covariance", value := "YES" },
  { key := "eqfi.lean.remet", value := "YES" },
  { key := "eqfi.face", value := "A" },
  { key := "eqfi.letter", value := "DEFINED" },
  { key := "eqfi.first.parting", value := "NONE" },
  { key := "eqfi.axis.first.mover", value := "NONE" },
  { key := "cell.C-EQFI", value := "YES" }
]

theorem check_1 : rows.length = 7 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "eqfi.record.moves.covariance" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqfi.lean.remet" && r.value == "YES")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqfi.face" && r.value == "A")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqfi.letter" && r.value == "DEFINED")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqfi.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqfi.axis.first.mover" && r.value == "NONE")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "cell.C-EQFI" && r.value == "YES")).length = 1 := by decide

theorem checks :
    (rows.length = 7) /\
    ((rows.filter (fun r => r.key == "eqfi.record.moves.covariance" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfi.lean.remet" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfi.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfi.letter" && r.value == "DEFINED")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfi.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfi.axis.first.mover" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQFI" && r.value == "YES")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (check_8)))))))

end ChainTheory.Data.D535360_NDFE
