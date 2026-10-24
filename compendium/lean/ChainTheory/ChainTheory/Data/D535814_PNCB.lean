set_option maxRecDepth 100000

namespace ChainTheory.Data.D535814_PNCB

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQPE", value := "YES" },
  { key := "eqpe.face", value := "A" },
  { key := "eqpe.first.parting", value := "NONE" },
  { key := "eqpe.joined.order.remet", value := "YES" },
  { key := "eqpe.letter", value := "EQUAL" },
  { key := "eqpe.qubit.bargmann.inside.qubit.matching.group", value := "NO" }
]

theorem check_1 : rows.length = 6 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQPE" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqpe.face" && r.value == "A")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqpe.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqpe.joined.order.remet" && r.value == "YES")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqpe.letter" && r.value == "EQUAL")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqpe.qubit.bargmann.inside.qubit.matching.group" && r.value == "NO")).length = 1 := by decide

theorem checks :
    (rows.length = 6) /\
    ((rows.filter (fun r => r.key == "cell.C-EQPE" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqpe.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqpe.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqpe.joined.order.remet" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqpe.letter" && r.value == "EQUAL")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqpe.qubit.bargmann.inside.qubit.matching.group" && r.value == "NO")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (check_7))))))

end ChainTheory.Data.D535814_PNCB
