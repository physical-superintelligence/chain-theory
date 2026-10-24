namespace ChainTheory.Data.D532075_LGDS

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "letter", value := "THEOREM" },
  { key := "cell", value := "YES" },
  { key := "face", value := "A" },
  { key := "defn_remet", value := "19209 of 19209" },
  { key := "relabel_unchanged", value := "19236 of 19236" },
  { key := "orient_unchanged", value := "19236 of 19236" },
  { key := "first_parting", value := "NONE" }
]

theorem check_1 : rows.length = 7 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "letter" && r.value == "THEOREM")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "cell" && r.value == "YES")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "face" && r.value == "A")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "defn_remet" && r.value == "19209 of 19209")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "relabel_unchanged" && r.value == "19236 of 19236")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "orient_unchanged" && r.value == "19236 of 19236")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "first_parting" && r.value == "NONE")).length = 1 := by decide

theorem checks :
    (rows.length = 7) /\
    ((rows.filter (fun r => r.key == "letter" && r.value == "THEOREM")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "defn_remet" && r.value == "19209 of 19209")).length = 1) /\
    ((rows.filter (fun r => r.key == "relabel_unchanged" && r.value == "19236 of 19236")).length = 1) /\
    ((rows.filter (fun r => r.key == "orient_unchanged" && r.value == "19236 of 19236")).length = 1) /\
    ((rows.filter (fun r => r.key == "first_parting" && r.value == "NONE")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (check_8)))))))

end ChainTheory.Data.D532075_LGDS
