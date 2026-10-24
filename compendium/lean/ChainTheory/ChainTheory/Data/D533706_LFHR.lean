set_option maxRecDepth 100000

namespace ChainTheory.Data.D533706_LFHR

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "C-EQLF", value := "FORCED-AT-EVERY-NON-SINK" }
]

theorem check_1 : rows.length = 1 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "C-EQLF" && r.value == "FORCED-AT-EVERY-NON-SINK")).length = 1 := by decide

theorem checks :
    (rows.length = 1) /\
    ((rows.filter (fun r => r.key == "C-EQLF" && r.value == "FORCED-AT-EVERY-NON-SINK")).length = 1) :=
  And.intro check_1 (check_2)

end ChainTheory.Data.D533706_LFHR
