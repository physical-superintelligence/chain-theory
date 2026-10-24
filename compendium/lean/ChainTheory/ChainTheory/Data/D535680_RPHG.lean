set_option maxRecDepth 100000

namespace ChainTheory.Data.D535680_RPHG

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQPQ", value := "YES" },
  { key := "eqpq.face", value := "A" },
  { key := "eqpq.first.parting", value := "NONE" },
  { key := "eqpq.letter", value := "FINITE" }
]

theorem check_1 : rows.length = 4 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQPQ" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqpq.face" && r.value == "A")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqpq.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqpq.letter" && r.value == "FINITE")).length = 1 := by decide

theorem checks :
    (rows.length = 4) /\
    ((rows.filter (fun r => r.key == "cell.C-EQPQ" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqpq.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqpq.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqpq.letter" && r.value == "FINITE")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (check_5))))

end ChainTheory.Data.D535680_RPHG
