set_option maxRecDepth 100000

namespace ChainTheory.Data.D534263_TSC2

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-CAPS", value := "YES" },
  { key := "cell.C-GIBS", value := "YES" },
  { key := "cell.C-STOP", value := "YES" },
  { key := "cell.C-EQTC", value := "YES" },
  { key := "eqtc.face", value := "FACE-A-CARRIED-TO-THE-STOP-CONDITION" },
  { key := "eqtc.first.parting", value := "NONE" },
  { key := "eqtc.tst4.theorem", value := "CARRIED-TO-THE-STOP-CONDITION" }
]

theorem check_1 : rows.length = 7 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-CAPS" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "cell.C-GIBS" && r.value == "YES")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "cell.C-STOP" && r.value == "YES")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "cell.C-EQTC" && r.value == "YES")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqtc.face" && r.value == "FACE-A-CARRIED-TO-THE-STOP-CONDITION")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqtc.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "eqtc.tst4.theorem" && r.value == "CARRIED-TO-THE-STOP-CONDITION")).length = 1 := by decide

theorem checks :
    (rows.length = 7) /\
    ((rows.filter (fun r => r.key == "cell.C-CAPS" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-GIBS" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-STOP" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQTC" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqtc.face" && r.value == "FACE-A-CARRIED-TO-THE-STOP-CONDITION")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqtc.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqtc.tst4.theorem" && r.value == "CARRIED-TO-THE-STOP-CONDITION")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (check_8)))))))

end ChainTheory.Data.D534263_TSC2
