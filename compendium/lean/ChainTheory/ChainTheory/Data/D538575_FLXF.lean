set_option maxRecDepth 100000

namespace ChainTheory.Data.D538575_FLXF

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQFX", value := "YES" },
  { key := "eqfx.conjunct.base", value := "YES" },
  { key := "eqfx.face", value := "A" },
  { key := "eqfx.first.face.parting", value := "NONE" },
  { key := "eqfx.letter", value := "FACE-A-EQUAL" },
  { key := "eqhw.conjunct.base", value := "YES" }
]

theorem check_1 : rows.length = 6 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQFX" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqfx.conjunct.base" && r.value == "YES")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqfx.face" && r.value == "A")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqfx.first.face.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqfx.letter" && r.value == "FACE-A-EQUAL")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqhw.conjunct.base" && r.value == "YES")).length = 1 := by decide

theorem checks :
    (rows.length = 6) /\
    ((rows.filter (fun r => r.key == "cell.C-EQFX" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfx.conjunct.base" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfx.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfx.first.face.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfx.letter" && r.value == "FACE-A-EQUAL")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqhw.conjunct.base" && r.value == "YES")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (check_7))))))

end ChainTheory.Data.D538575_FLXF
