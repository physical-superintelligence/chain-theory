set_option maxRecDepth 100000

namespace ChainTheory.Data.D533023_TD2S

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "YES", value := "THEOREM" }
]

theorem check_1 : rows.length = 1 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "YES" && r.value == "THEOREM")).length = 1 := by decide

theorem checks :
    (rows.length = 1) /\
    ((rows.filter (fun r => r.key == "YES" && r.value == "THEOREM")).length = 1) :=
  And.intro check_1 (check_2)

end ChainTheory.Data.D533023_TD2S
