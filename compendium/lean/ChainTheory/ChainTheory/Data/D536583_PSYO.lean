set_option maxRecDepth 100000

namespace ChainTheory.Data.D536583_PSYO

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQQB", value := "YES" },
  { key := "eqqb.face", value := "A" },
  { key := "eqqb.first.parting", value := "NONE" },
  { key := "eqqb.letter", value := "RE-MET" }
]

theorem check_1 : rows.length = 4 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQQB" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqqb.face" && r.value == "A")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqqb.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqqb.letter" && r.value == "RE-MET")).length = 1 := by decide

theorem checks :
    (rows.length = 4) /\
    ((rows.filter (fun r => r.key == "cell.C-EQQB" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqqb.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqqb.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqqb.letter" && r.value == "RE-MET")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (check_5))))

end ChainTheory.Data.D536583_PSYO
