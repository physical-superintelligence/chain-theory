set_option maxRecDepth 100000

namespace ChainTheory.Data.D532943_RTOP

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQPF", value := "YES" },
  { key := "eqpf.first.parting", value := "NONE" },
  { key := "eqpf.faceA", value := "YES" },
  { key := "eqpf.faceB", value := "NO" },
  { key := "eqpf.prefactor.wash", value := "OWN" },
  { key := "eqpf.office.reading", value := "CELL" }
]

theorem check_1 : rows.length = 6 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQPF" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqpf.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqpf.faceA" && r.value == "YES")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqpf.faceB" && r.value == "NO")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqpf.prefactor.wash" && r.value == "OWN")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqpf.office.reading" && r.value == "CELL")).length = 1 := by decide

theorem checks :
    (rows.length = 6) /\
    ((rows.filter (fun r => r.key == "cell.C-EQPF" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqpf.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqpf.faceA" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqpf.faceB" && r.value == "NO")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqpf.prefactor.wash" && r.value == "OWN")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqpf.office.reading" && r.value == "CELL")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (check_7))))))

end ChainTheory.Data.D532943_RTOP
