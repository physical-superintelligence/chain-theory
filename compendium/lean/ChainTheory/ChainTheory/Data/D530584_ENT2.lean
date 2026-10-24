namespace ChainTheory.Data.D530584_ENT2

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "eqte.face", value := "A" },
  { key := "eqte.first.notkeyed", value := "NONE" },
  { key := "eqte.face.STRICT", value := "B" },
  { key := "entw.strict", value := "STRICTLY-INCREASING" },
  { key := "entw.first.nonpositive", value := "NONE" },
  { key := "entw.sample", value := "MET" },
  { key := "entw.sample.count", value := "182940" },
  { key := "entw.sample.rule.count", value := "20331" },
  { key := "entw.path", value := "STRICTLY-INCREASING" },
  { key := "entw.slaw", value := "PARTING" },
  { key := "entw.slaw.typing", value := "TWO-OBJECTS" },
  { key := "fluc.key.reading", value := "CHARTER" },
  { key := "fluc.function", value := "NO" },
  { key := "fluc.function.name", value := "NONE" },
  { key := "onsg.setequal", value := "EQUAL" },
  { key := "onsg.first.parting", value := "NONE" },
  { key := "onsg.asym.pairs", value := "24" },
  { key := "eqte.twin.cell", value := "NO" },
  { key := "eqte.twin.face", value := "B" },
  { key := "cell.C-EQTE", value := "YES" }
]

theorem check_1 : rows.length = 20 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "eqte.face" && r.value == "A")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqte.first.notkeyed" && r.value == "NONE")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqte.face.STRICT" && r.value == "B")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "entw.strict" && r.value == "STRICTLY-INCREASING")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "entw.first.nonpositive" && r.value == "NONE")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "entw.sample" && r.value == "MET")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "entw.sample.count" && r.value == "182940")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "entw.sample.rule.count" && r.value == "20331")).length = 1 := by decide

theorem check_10 : (rows.filter (fun r => r.key == "entw.path" && r.value == "STRICTLY-INCREASING")).length = 1 := by decide

theorem check_11 : (rows.filter (fun r => r.key == "entw.slaw" && r.value == "PARTING")).length = 1 := by decide

theorem check_12 : (rows.filter (fun r => r.key == "entw.slaw.typing" && r.value == "TWO-OBJECTS")).length = 1 := by decide

theorem check_13 : (rows.filter (fun r => r.key == "fluc.key.reading" && r.value == "CHARTER")).length = 1 := by decide

theorem check_14 : (rows.filter (fun r => r.key == "fluc.function" && r.value == "NO")).length = 1 := by decide

theorem check_15 : (rows.filter (fun r => r.key == "fluc.function.name" && r.value == "NONE")).length = 1 := by decide

theorem check_16 : (rows.filter (fun r => r.key == "onsg.setequal" && r.value == "EQUAL")).length = 1 := by decide

theorem check_17 : (rows.filter (fun r => r.key == "onsg.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_18 : (rows.filter (fun r => r.key == "onsg.asym.pairs" && r.value == "24")).length = 1 := by decide

theorem check_19 : (rows.filter (fun r => r.key == "eqte.twin.cell" && r.value == "NO")).length = 1 := by decide

theorem check_20 : (rows.filter (fun r => r.key == "eqte.twin.face" && r.value == "B")).length = 1 := by decide

theorem check_21 : (rows.filter (fun r => r.key == "cell.C-EQTE" && r.value == "YES")).length = 1 := by decide

theorem checks :
    (rows.length = 20) /\
    ((rows.filter (fun r => r.key == "eqte.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqte.first.notkeyed" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqte.face.STRICT" && r.value == "B")).length = 1) /\
    ((rows.filter (fun r => r.key == "entw.strict" && r.value == "STRICTLY-INCREASING")).length = 1) /\
    ((rows.filter (fun r => r.key == "entw.first.nonpositive" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "entw.sample" && r.value == "MET")).length = 1) /\
    ((rows.filter (fun r => r.key == "entw.sample.count" && r.value == "182940")).length = 1) /\
    ((rows.filter (fun r => r.key == "entw.sample.rule.count" && r.value == "20331")).length = 1) /\
    ((rows.filter (fun r => r.key == "entw.path" && r.value == "STRICTLY-INCREASING")).length = 1) /\
    ((rows.filter (fun r => r.key == "entw.slaw" && r.value == "PARTING")).length = 1) /\
    ((rows.filter (fun r => r.key == "entw.slaw.typing" && r.value == "TWO-OBJECTS")).length = 1) /\
    ((rows.filter (fun r => r.key == "fluc.key.reading" && r.value == "CHARTER")).length = 1) /\
    ((rows.filter (fun r => r.key == "fluc.function" && r.value == "NO")).length = 1) /\
    ((rows.filter (fun r => r.key == "fluc.function.name" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "onsg.setequal" && r.value == "EQUAL")).length = 1) /\
    ((rows.filter (fun r => r.key == "onsg.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "onsg.asym.pairs" && r.value == "24")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqte.twin.cell" && r.value == "NO")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqte.twin.face" && r.value == "B")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQTE" && r.value == "YES")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (And.intro check_9 (And.intro check_10 (And.intro check_11 (And.intro check_12 (And.intro check_13 (And.intro check_14 (And.intro check_15 (And.intro check_16 (And.intro check_17 (And.intro check_18 (And.intro check_19 (And.intro check_20 (check_21))))))))))))))))))))

end ChainTheory.Data.D530584_ENT2
