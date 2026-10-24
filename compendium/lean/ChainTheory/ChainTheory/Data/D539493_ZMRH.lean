set_option maxRecDepth 100000

namespace ChainTheory.Data.D539493_ZMRH

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQHM", value := "YES" },
  { key := "cell.C-EQHM.base.rule.face", value := "B" },
  { key := "cell.C-EQHM.clause", value := "YES" },
  { key := "cell.C-EQHM.face", value := "A" },
  { key := "cell.C-EQHM.faceA", value := "YES" },
  { key := "cell.C-EQHM.faceA.reading.named", value := "SHARED" },
  { key := "cell.C-EQHM.faceA.readings", value := "SHARED" },
  { key := "cell.C-EQHM.faceB", value := "NO" },
  { key := "cell.C-EQHM.first.parting.reading", value := "KEY" },
  { key := "cell.C-EQHM.letter", value := "ONE-METRIC-AT-ONE-READING-NAMED" },
  { key := "cell.C-EQHM.metric.landed.readings", value := "SHARED" },
  { key := "cell.C-EQHM.mirror.letter", value := "PARTING" },
  { key := "metr.landed.readings", value := "SHARED" },
  { key := "metr.mirror.letter", value := "PARTING" }
]

theorem check_1 : rows.length = 14 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQHM" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "cell.C-EQHM.base.rule.face" && r.value == "B")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "cell.C-EQHM.clause" && r.value == "YES")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "cell.C-EQHM.face" && r.value == "A")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "cell.C-EQHM.faceA" && r.value == "YES")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "cell.C-EQHM.faceA.reading.named" && r.value == "SHARED")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "cell.C-EQHM.faceA.readings" && r.value == "SHARED")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "cell.C-EQHM.faceB" && r.value == "NO")).length = 1 := by decide

theorem check_10 : (rows.filter (fun r => r.key == "cell.C-EQHM.first.parting.reading" && r.value == "KEY")).length = 1 := by decide

theorem check_11 : (rows.filter (fun r => r.key == "cell.C-EQHM.letter" && r.value == "ONE-METRIC-AT-ONE-READING-NAMED")).length = 1 := by decide

theorem check_12 : (rows.filter (fun r => r.key == "cell.C-EQHM.metric.landed.readings" && r.value == "SHARED")).length = 1 := by decide

theorem check_13 : (rows.filter (fun r => r.key == "cell.C-EQHM.mirror.letter" && r.value == "PARTING")).length = 1 := by decide

theorem check_14 : (rows.filter (fun r => r.key == "metr.landed.readings" && r.value == "SHARED")).length = 1 := by decide

theorem check_15 : (rows.filter (fun r => r.key == "metr.mirror.letter" && r.value == "PARTING")).length = 1 := by decide

theorem checks :
    (rows.length = 14) /\
    ((rows.filter (fun r => r.key == "cell.C-EQHM" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQHM.base.rule.face" && r.value == "B")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQHM.clause" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQHM.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQHM.faceA" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQHM.faceA.reading.named" && r.value == "SHARED")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQHM.faceA.readings" && r.value == "SHARED")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQHM.faceB" && r.value == "NO")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQHM.first.parting.reading" && r.value == "KEY")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQHM.letter" && r.value == "ONE-METRIC-AT-ONE-READING-NAMED")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQHM.metric.landed.readings" && r.value == "SHARED")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQHM.mirror.letter" && r.value == "PARTING")).length = 1) /\
    ((rows.filter (fun r => r.key == "metr.landed.readings" && r.value == "SHARED")).length = 1) /\
    ((rows.filter (fun r => r.key == "metr.mirror.letter" && r.value == "PARTING")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (And.intro check_9 (And.intro check_10 (And.intro check_11 (And.intro check_12 (And.intro check_13 (And.intro check_14 (check_15))))))))))))))

end ChainTheory.Data.D539493_ZMRH
