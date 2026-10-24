set_option maxRecDepth 100000

namespace ChainTheory.Data.D537836_JHMT

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "eq.face", value := "A" },
  { key := "eq.faceA.met", value := "YES" },
  { key := "eq.faceB.first", value := "NONE" },
  { key := "eq.faceB.met", value := "NO" },
  { key := "eq.first.parting", value := "NONE" },
  { key := "eq.letter", value := "TRIVIAL-AND-IDENTITY" }
]

theorem check_1 : rows.length = 6 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "eq.face" && r.value == "A")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eq.faceA.met" && r.value == "YES")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eq.faceB.first" && r.value == "NONE")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eq.faceB.met" && r.value == "NO")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eq.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eq.letter" && r.value == "TRIVIAL-AND-IDENTITY")).length = 1 := by decide

theorem checks :
    (rows.length = 6) /\
    ((rows.filter (fun r => r.key == "eq.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eq.faceA.met" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eq.faceB.first" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eq.faceB.met" && r.value == "NO")).length = 1) /\
    ((rows.filter (fun r => r.key == "eq.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eq.letter" && r.value == "TRIVIAL-AND-IDENTITY")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (check_7))))))

end ChainTheory.Data.D537836_JHMT
