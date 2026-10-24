namespace ChainTheory.Data.D528772_QEHL

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "eqqe.set.of.record", value := "L" },
  { key := "eqqe.set.of.record.count", value := "6" },
  { key := "eqqe.clause.E1", value := "YES" },
  { key := "eqqe.clause.E2", value := "YES" },
  { key := "eqqe.clause.E3", value := "YES" },
  { key := "eqqe.clause.E4", value := "YES" },
  { key := "eqqe.clause.E5", value := "YES" },
  { key := "eqqe.clause.E6", value := "YES" },
  { key := "eqqe.clause.E7", value := "YES" },
  { key := "eqqe.clauses.held", value := "7 of 7" },
  { key := "eqqe.first.failing.clause", value := "NONE" },
  { key := "eqqe.first.failing.objects", value := "NONE" },
  { key := "eqqe.face", value := "A" },
  { key := "eqqe.count.eq.landed", value := "6 of 6" },
  { key := "eqqe.set.L.links.chain.held", value := "6 of 6" },
  { key := "eqqe.kit.reading.held", value := "7 of 11" },
  { key := "eqqe.kit.reading.first.failing.clause", value := "E4" },
  { key := "eqqe.set.K.conclusion.held", value := "11 of 11" },
  { key := "cell.C-EQQE", value := "YES" }
]

theorem check_1 : rows.length = 19 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "eqqe.set.of.record" && r.value == "L")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqqe.set.of.record.count" && r.value == "6")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqqe.clause.E1" && r.value == "YES")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqqe.clause.E2" && r.value == "YES")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqqe.clause.E3" && r.value == "YES")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqqe.clause.E4" && r.value == "YES")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "eqqe.clause.E5" && r.value == "YES")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "eqqe.clause.E6" && r.value == "YES")).length = 1 := by decide

theorem check_10 : (rows.filter (fun r => r.key == "eqqe.clause.E7" && r.value == "YES")).length = 1 := by decide

theorem check_11 : (rows.filter (fun r => r.key == "eqqe.clauses.held" && r.value == "7 of 7")).length = 1 := by decide

theorem check_12 : (rows.filter (fun r => r.key == "eqqe.first.failing.clause" && r.value == "NONE")).length = 1 := by decide

theorem check_13 : (rows.filter (fun r => r.key == "eqqe.first.failing.objects" && r.value == "NONE")).length = 1 := by decide

theorem check_14 : (rows.filter (fun r => r.key == "eqqe.face" && r.value == "A")).length = 1 := by decide

theorem check_15 : (rows.filter (fun r => r.key == "eqqe.count.eq.landed" && r.value == "6 of 6")).length = 1 := by decide

theorem check_16 : (rows.filter (fun r => r.key == "eqqe.set.L.links.chain.held" && r.value == "6 of 6")).length = 1 := by decide

theorem check_17 : (rows.filter (fun r => r.key == "eqqe.kit.reading.held" && r.value == "7 of 11")).length = 1 := by decide

theorem check_18 : (rows.filter (fun r => r.key == "eqqe.kit.reading.first.failing.clause" && r.value == "E4")).length = 1 := by decide

theorem check_19 : (rows.filter (fun r => r.key == "eqqe.set.K.conclusion.held" && r.value == "11 of 11")).length = 1 := by decide

theorem check_20 : (rows.filter (fun r => r.key == "cell.C-EQQE" && r.value == "YES")).length = 1 := by decide

theorem checks :
    (rows.length = 19) /\
    ((rows.filter (fun r => r.key == "eqqe.set.of.record" && r.value == "L")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqqe.set.of.record.count" && r.value == "6")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqqe.clause.E1" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqqe.clause.E2" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqqe.clause.E3" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqqe.clause.E4" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqqe.clause.E5" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqqe.clause.E6" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqqe.clause.E7" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqqe.clauses.held" && r.value == "7 of 7")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqqe.first.failing.clause" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqqe.first.failing.objects" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqqe.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqqe.count.eq.landed" && r.value == "6 of 6")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqqe.set.L.links.chain.held" && r.value == "6 of 6")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqqe.kit.reading.held" && r.value == "7 of 11")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqqe.kit.reading.first.failing.clause" && r.value == "E4")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqqe.set.K.conclusion.held" && r.value == "11 of 11")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQQE" && r.value == "YES")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (And.intro check_9 (And.intro check_10 (And.intro check_11 (And.intro check_12 (And.intro check_13 (And.intro check_14 (And.intro check_15 (And.intro check_16 (And.intro check_17 (And.intro check_18 (And.intro check_19 (check_20)))))))))))))))))))

end ChainTheory.Data.D528772_QEHL
