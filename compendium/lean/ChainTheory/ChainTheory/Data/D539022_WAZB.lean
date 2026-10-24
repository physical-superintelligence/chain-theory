set_option maxRecDepth 100000

namespace ChainTheory.Data.D539022_WAZB

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-OFFW", value := "YES" },
  { key := "cell.C-OFFZ", value := "YES" },
  { key := "cell.C-RATO", value := "YES" },
  { key := "cell.C-EQWZ", value := "YES" },
  { key := "eqwz.faceA", value := "YES" },
  { key := "eqwz.faceB.first.parting", value := "NONE" },
  { key := "form.record", value := "COUNT" },
  { key := "register.record", value := "ZBODY" }
]

theorem check_1 : rows.length = 8 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-OFFW" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "cell.C-OFFZ" && r.value == "YES")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "cell.C-RATO" && r.value == "YES")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "cell.C-EQWZ" && r.value == "YES")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqwz.faceA" && r.value == "YES")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqwz.faceB.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "form.record" && r.value == "COUNT")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "register.record" && r.value == "ZBODY")).length = 1 := by decide

theorem checks :
    (rows.length = 8) /\
    ((rows.filter (fun r => r.key == "cell.C-OFFW" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-OFFZ" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-RATO" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQWZ" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqwz.faceA" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqwz.faceB.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "form.record" && r.value == "COUNT")).length = 1) /\
    ((rows.filter (fun r => r.key == "register.record" && r.value == "ZBODY")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (check_9))))))))

end ChainTheory.Data.D539022_WAZB
