namespace ChainTheory.Data.D532153_ENBG

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQGB", value := "YES" },
  { key := "letter", value := "THEOREM" },
  { key := "face", value := "A" },
  { key := "first", value := "NONE" },
  { key := "realized.face", value := "B" },
  { key := "anyhub.face", value := "B" },
  { key := "dockc.face", value := "A" },
  { key := "k3.sinks.record", value := "0" },
  { key := "k3.sinks.realized", value := "6413" }
]

theorem check_1 : rows.length = 9 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQGB" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "letter" && r.value == "THEOREM")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "face" && r.value == "A")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "first" && r.value == "NONE")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "realized.face" && r.value == "B")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "anyhub.face" && r.value == "B")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "dockc.face" && r.value == "A")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "k3.sinks.record" && r.value == "0")).length = 1 := by decide

theorem check_10 : (rows.filter (fun r => r.key == "k3.sinks.realized" && r.value == "6413")).length = 1 := by decide

theorem checks :
    (rows.length = 9) /\
    ((rows.filter (fun r => r.key == "cell.C-EQGB" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "letter" && r.value == "THEOREM")).length = 1) /\
    ((rows.filter (fun r => r.key == "face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "first" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "realized.face" && r.value == "B")).length = 1) /\
    ((rows.filter (fun r => r.key == "anyhub.face" && r.value == "B")).length = 1) /\
    ((rows.filter (fun r => r.key == "dockc.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "k3.sinks.record" && r.value == "0")).length = 1) /\
    ((rows.filter (fun r => r.key == "k3.sinks.realized" && r.value == "6413")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (And.intro check_9 (check_10)))))))))

end ChainTheory.Data.D532153_ENBG
