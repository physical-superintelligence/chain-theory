set_option maxRecDepth 100000

namespace ChainTheory.Data.D534501_TRDR

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "eqdt.face", value := "A" },
  { key := "eqdt.first.parting", value := "NONE" },
  { key := "lowd.face", value := "A" },
  { key := "cell.C-EQDT", value := "YES" }
]

theorem check_1 : rows.length = 4 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "eqdt.face" && r.value == "A")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqdt.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "lowd.face" && r.value == "A")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "cell.C-EQDT" && r.value == "YES")).length = 1 := by decide

theorem checks :
    (rows.length = 4) /\
    ((rows.filter (fun r => r.key == "eqdt.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqdt.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "lowd.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQDT" && r.value == "YES")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (check_5))))

end ChainTheory.Data.D534501_TRDR
