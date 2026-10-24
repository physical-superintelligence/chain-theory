set_option maxRecDepth 100000

namespace ChainTheory.Data.D533893_HLGR

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "eqhg.face", value := "A" },
  { key := "eqhg.first.parting.body", value := "NONE" },
  { key := "eqhg.first.parting.reason", value := "NONE" },
  { key := "cell.C-EQHG", value := "YES" }
]

theorem check_1 : rows.length = 4 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "eqhg.face" && r.value == "A")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqhg.first.parting.body" && r.value == "NONE")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqhg.first.parting.reason" && r.value == "NONE")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "cell.C-EQHG" && r.value == "YES")).length = 1 := by decide

theorem checks :
    (rows.length = 4) /\
    ((rows.filter (fun r => r.key == "eqhg.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhg.first.parting.body" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhg.first.parting.reason" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQHG" && r.value == "YES")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (check_5))))

end ChainTheory.Data.D533893_HLGR
