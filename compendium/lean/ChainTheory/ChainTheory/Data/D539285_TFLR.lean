set_option maxRecDepth 100000

namespace ChainTheory.Data.D539285_TFLR

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "eqvi.R1.first.parting", value := "NONE" },
  { key := "eqvi.R2.first.parting", value := "NONE" },
  { key := "eqvi.rule.order.of.record.present", value := "YES" },
  { key := "eqvi.faceA.met", value := "YES" },
  { key := "eqvi.faceB.met", value := "NO" },
  { key := "eqvi.first.parting", value := "NONE" },
  { key := "eqvi.face", value := "A" },
  { key := "cell.C-EQVI", value := "YES" }
]

theorem check_1 : rows.length = 8 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "eqvi.R1.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqvi.R2.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqvi.rule.order.of.record.present" && r.value == "YES")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqvi.faceA.met" && r.value == "YES")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqvi.faceB.met" && r.value == "NO")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqvi.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "eqvi.face" && r.value == "A")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "cell.C-EQVI" && r.value == "YES")).length = 1 := by decide

theorem checks :
    (rows.length = 8) /\
    ((rows.filter (fun r => r.key == "eqvi.R1.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqvi.R2.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqvi.rule.order.of.record.present" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqvi.faceA.met" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqvi.faceB.met" && r.value == "NO")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqvi.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqvi.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQVI" && r.value == "YES")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (check_9))))))))

end ChainTheory.Data.D539285_TFLR
