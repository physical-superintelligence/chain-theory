set_option maxRecDepth 100000

namespace ChainTheory.Data.D535653_PICP

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQPC", value := "YES" },
  { key := "eq.face", value := "A" },
  { key := "eq.face.record", value := "DA" },
  { key := "eq.faceA.met", value := "YES" },
  { key := "eq.faceB.met", value := "NO" },
  { key := "eq.first.refusing", value := "NONE" },
  { key := "eq.letter", value := "AT-THE-CAP" },
  { key := "cap.DA.halts", value := "RUNS-THROUGH-THE-CAP" },
  { key := "cap.DA.closure.stop", value := "UNSTOPPED-AT-THE-BUDGET" },
  { key := "cap.BA.halts", value := "RUNS-THROUGH-THE-CAP" },
  { key := "cap.BA.closure.stop", value := "UNSTOPPED-AT-THE-BUDGET" }
]

theorem check_1 : rows.length = 11 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQPC" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eq.face" && r.value == "A")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eq.face.record" && r.value == "DA")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eq.faceA.met" && r.value == "YES")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eq.faceB.met" && r.value == "NO")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eq.first.refusing" && r.value == "NONE")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "eq.letter" && r.value == "AT-THE-CAP")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "cap.DA.halts" && r.value == "RUNS-THROUGH-THE-CAP")).length = 1 := by decide

theorem check_10 : (rows.filter (fun r => r.key == "cap.DA.closure.stop" && r.value == "UNSTOPPED-AT-THE-BUDGET")).length = 1 := by decide

theorem check_11 : (rows.filter (fun r => r.key == "cap.BA.halts" && r.value == "RUNS-THROUGH-THE-CAP")).length = 1 := by decide

theorem check_12 : (rows.filter (fun r => r.key == "cap.BA.closure.stop" && r.value == "UNSTOPPED-AT-THE-BUDGET")).length = 1 := by decide

theorem checks :
    (rows.length = 11) /\
    ((rows.filter (fun r => r.key == "cell.C-EQPC" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eq.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eq.face.record" && r.value == "DA")).length = 1) /\
    ((rows.filter (fun r => r.key == "eq.faceA.met" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eq.faceB.met" && r.value == "NO")).length = 1) /\
    ((rows.filter (fun r => r.key == "eq.first.refusing" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eq.letter" && r.value == "AT-THE-CAP")).length = 1) /\
    ((rows.filter (fun r => r.key == "cap.DA.halts" && r.value == "RUNS-THROUGH-THE-CAP")).length = 1) /\
    ((rows.filter (fun r => r.key == "cap.DA.closure.stop" && r.value == "UNSTOPPED-AT-THE-BUDGET")).length = 1) /\
    ((rows.filter (fun r => r.key == "cap.BA.halts" && r.value == "RUNS-THROUGH-THE-CAP")).length = 1) /\
    ((rows.filter (fun r => r.key == "cap.BA.closure.stop" && r.value == "UNSTOPPED-AT-THE-BUDGET")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (And.intro check_9 (And.intro check_10 (And.intro check_11 (check_12)))))))))))

end ChainTheory.Data.D535653_PICP
