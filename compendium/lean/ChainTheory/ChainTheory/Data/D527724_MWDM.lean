namespace ChainTheory.Data.D527724_MWDM

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "eq.built", value := "4 of 4" },
  { key := "eq.first.failure", value := "NONE" },
  { key := "eq.face", value := "A" },
  { key := "eq.measurements", value := "M25a;M26a;M26b;M27a" },
  { key := "eq.N.printed", value := "2;3" },
  { key := "eq.readings", value := "SIMPLE;MULTI" },
  { key := "cell.C-EQDM", value := "YES" }
]

theorem check_1 : rows.length = 7 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQDM" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eq.built" && r.value == "4 of 4")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eq.face" && r.value == "A")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eq.first.failure" && r.value == "NONE")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eq.measurements" && r.value == "M25a;M26a;M26b;M27a")).length = 1 := by decide

theorem checks :
    (rows.length = 7) /\
    ((rows.filter (fun r => r.key == "cell.C-EQDM" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eq.built" && r.value == "4 of 4")).length = 1) /\
    ((rows.filter (fun r => r.key == "eq.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eq.first.failure" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eq.measurements" && r.value == "M25a;M26a;M26b;M27a")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (check_6)))))

end ChainTheory.Data.D527724_MWDM
