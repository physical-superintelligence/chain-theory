set_option maxRecDepth 100000

namespace ChainTheory.Data.D533468_DNGH

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQHD", value := "NO" },
  { key := "eqhd.face.of.record", value := "REGISTER" },
  { key := "eqhd.faceA", value := "NO" },
  { key := "eqhd.faceB", value := "YES" }
]

theorem check_1 : rows.length = 4 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQHD" && r.value == "NO")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqhd.face.of.record" && r.value == "REGISTER")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqhd.faceA" && r.value == "NO")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqhd.faceB" && r.value == "YES")).length = 1 := by decide

theorem checks :
    (rows.length = 4) /\
    ((rows.filter (fun r => r.key == "cell.C-EQHD" && r.value == "NO")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhd.face.of.record" && r.value == "REGISTER")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhd.faceA" && r.value == "NO")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhd.faceB" && r.value == "YES")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (check_5))))

end ChainTheory.Data.D533468_DNGH
