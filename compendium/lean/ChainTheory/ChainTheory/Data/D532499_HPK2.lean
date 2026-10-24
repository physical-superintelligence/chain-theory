namespace ChainTheory.Data.D532499_HPK2

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQHP", value := "YES" },
  { key := "eqhp.all.equal", value := "16 of 16" },
  { key := "eqhp.bodies.equal", value := "13 of 13" },
  { key := "eqhp.crosscore.equal", value := "3 of 3" },
  { key := "eqhp.directsum.equal", value := "16 of 16" },
  { key := "eqhp.dressing.equal", value := "16 of 16" },
  { key := "eqhp.face", value := "A" },
  { key := "eqhp.first.parting", value := "NONE" },
  { key := "eqhp.first.parting.web", value := "NONE" },
  { key := "eqhp.grammar.equal", value := "16 of 16" },
  { key := "eqhp.webs", value := "16" }
]

theorem check_1 : rows.length = 11 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQHP" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqhp.all.equal" && r.value == "16 of 16")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqhp.bodies.equal" && r.value == "13 of 13")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqhp.crosscore.equal" && r.value == "3 of 3")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqhp.directsum.equal" && r.value == "16 of 16")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqhp.dressing.equal" && r.value == "16 of 16")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "eqhp.face" && r.value == "A")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "eqhp.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_10 : (rows.filter (fun r => r.key == "eqhp.first.parting.web" && r.value == "NONE")).length = 1 := by decide

theorem check_11 : (rows.filter (fun r => r.key == "eqhp.grammar.equal" && r.value == "16 of 16")).length = 1 := by decide

theorem check_12 : (rows.filter (fun r => r.key == "eqhp.webs" && r.value == "16")).length = 1 := by decide

theorem checks :
    (rows.length = 11) /\
    ((rows.filter (fun r => r.key == "cell.C-EQHP" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhp.all.equal" && r.value == "16 of 16")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhp.bodies.equal" && r.value == "13 of 13")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhp.crosscore.equal" && r.value == "3 of 3")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhp.directsum.equal" && r.value == "16 of 16")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhp.dressing.equal" && r.value == "16 of 16")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhp.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhp.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhp.first.parting.web" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhp.grammar.equal" && r.value == "16 of 16")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhp.webs" && r.value == "16")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (And.intro check_9 (And.intro check_10 (And.intro check_11 (check_12)))))))))))

end ChainTheory.Data.D532499_HPK2
