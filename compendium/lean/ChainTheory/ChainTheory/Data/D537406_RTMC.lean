set_option maxRecDepth 100000

namespace ChainTheory.Data.D537406_RTMC

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "C-EQIU", value := "YES" },
  { key := "letter", value := "FACE-A-THEOREM" },
  { key := "face", value := "A" },
  { key := "first_parting", value := "NONE" }
]

theorem check_1 : rows.length = 4 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "C-EQIU" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "letter" && r.value == "FACE-A-THEOREM")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "face" && r.value == "A")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "first_parting" && r.value == "NONE")).length = 1 := by decide

theorem checks :
    (rows.length = 4) /\
    ((rows.filter (fun r => r.key == "C-EQIU" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "letter" && r.value == "FACE-A-THEOREM")).length = 1) /\
    ((rows.filter (fun r => r.key == "face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "first_parting" && r.value == "NONE")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (check_5))))

end ChainTheory.Data.D537406_RTMC
