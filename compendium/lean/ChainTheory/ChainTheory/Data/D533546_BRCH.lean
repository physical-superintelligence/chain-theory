set_option maxRecDepth 100000

namespace ChainTheory.Data.D533546_BRCH

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQBR", value := "YES" },
  { key := "eqbr.rtop.electron.eq", value := "YES" },
  { key := "eqbr.rtop.muon.eq", value := "YES" },
  { key := "eqbr.faceA", value := "YES" },
  { key := "eqbr.faceB", value := "NO" },
  { key := "eqbr.first.parting", value := "NONE" }
]

theorem check_1 : rows.length = 6 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQBR" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqbr.rtop.electron.eq" && r.value == "YES")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqbr.rtop.muon.eq" && r.value == "YES")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqbr.faceA" && r.value == "YES")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqbr.faceB" && r.value == "NO")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqbr.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem checks :
    (rows.length = 6) /\
    ((rows.filter (fun r => r.key == "cell.C-EQBR" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqbr.rtop.electron.eq" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqbr.rtop.muon.eq" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqbr.faceA" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqbr.faceB" && r.value == "NO")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqbr.first.parting" && r.value == "NONE")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (check_7))))))

end ChainTheory.Data.D533546_BRCH
