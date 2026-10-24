namespace ChainTheory.Data.D527777_AJBP

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQAB", value := "YES" },
  { key := "eqab.bodypart.order1.exact", value := "YES" },
  { key := "eqab.cross.order2.exact", value := "YES" },
  { key := "eqab.failures", value := "0" },
  { key := "eqab.first.failure", value := "NONE" },
  { key := "eqab.letter", value := "DEFINED" },
  { key := "eqab.measurement.remet", value := "YES" },
  { key := "eqab.order2.eq.graded.T2", value := "YES" },
  { key := "eqab.order2.identity", value := "YES" },
  { key := "eqab.order3.sign", value := "ZERO" },
  { key := "eqab.order3.zero", value := "YES" },
  { key := "eqab.selfterms.order2.exact", value := "YES" },
  { key := "eqab.spelling.of.row", value := "DOCK" }
]

theorem check_1 : rows.length = 13 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQAB" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqab.letter" && r.value == "DEFINED")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqab.failures" && r.value == "0")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqab.first.failure" && r.value == "NONE")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqab.order3.zero" && r.value == "YES")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqab.order2.identity" && r.value == "YES")).length = 1 := by decide

theorem checks :
    (rows.length = 13) /\
    ((rows.filter (fun r => r.key == "cell.C-EQAB" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqab.letter" && r.value == "DEFINED")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqab.failures" && r.value == "0")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqab.first.failure" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqab.order3.zero" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqab.order2.identity" && r.value == "YES")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (check_7))))))

end ChainTheory.Data.D527777_AJBP
