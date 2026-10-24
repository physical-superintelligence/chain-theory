namespace ChainTheory.Data.D531706_MUG2

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-SELF", value := "YES" },
  { key := "cell.C-MUON", value := "YES" },
  { key := "cell.C-DIFF", value := "YES" },
  { key := "cell.C-EQMU", value := "YES" },
  { key := "cell.C-CT", value := "YES" },
  { key := "eqmu.face", value := "A" },
  { key := "eqmu.letter", value := "COMPOSED" },
  { key := "eqmu.first.uncarried", value := "NONE" },
  { key := "eqmu.electron.control", value := "EQUAL" },
  { key := "eqmu.muon.composition", value := "YES" },
  { key := "eqmu.diff.sign", value := "PLUS" }
]

theorem check_1 : rows.length = 11 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-SELF" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "cell.C-MUON" && r.value == "YES")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "cell.C-DIFF" && r.value == "YES")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "cell.C-EQMU" && r.value == "YES")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "cell.C-CT" && r.value == "YES")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqmu.face" && r.value == "A")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "eqmu.letter" && r.value == "COMPOSED")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "eqmu.first.uncarried" && r.value == "NONE")).length = 1 := by decide

theorem check_10 : (rows.filter (fun r => r.key == "eqmu.electron.control" && r.value == "EQUAL")).length = 1 := by decide

theorem check_11 : (rows.filter (fun r => r.key == "eqmu.muon.composition" && r.value == "YES")).length = 1 := by decide

theorem check_12 : (rows.filter (fun r => r.key == "eqmu.diff.sign" && r.value == "PLUS")).length = 1 := by decide

theorem checks :
    (rows.length = 11) /\
    ((rows.filter (fun r => r.key == "cell.C-SELF" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-MUON" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-DIFF" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQMU" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-CT" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqmu.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqmu.letter" && r.value == "COMPOSED")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqmu.first.uncarried" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqmu.electron.control" && r.value == "EQUAL")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqmu.muon.composition" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqmu.diff.sign" && r.value == "PLUS")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (And.intro check_9 (And.intro check_10 (And.intro check_11 (check_12)))))))))))

end ChainTheory.Data.D531706_MUG2
