set_option maxRecDepth 100000

namespace ChainTheory.Data.D534290_LOWD

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQLD", value := "YES" },
  { key := "eqld.face", value := "A" },
  { key := "eqld.first.parting", value := "NONE" }
]

theorem check_1 : rows.length = 3 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQLD" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqld.face" && r.value == "A")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqld.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem checks :
    (rows.length = 3) /\
    ((rows.filter (fun r => r.key == "cell.C-EQLD" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqld.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqld.first.parting" && r.value == "NONE")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (check_4)))

end ChainTheory.Data.D534290_LOWD
