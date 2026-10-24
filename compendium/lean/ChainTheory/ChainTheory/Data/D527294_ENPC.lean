namespace ChainTheory.Data.D527294_ENPC

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "eqpm.counts.sum.record", value := "YES" },
  { key := "eqpm.counts.sum.beside", value := "YES" },
  { key := "eqpm.first.untyped", value := "NONE" },
  { key := "eqpm.first.unspelled.without.reading", value := "NONE" },
  { key := "census.record.spelled", value := "3" },
  { key := "census.record.readout", value := "8" },
  { key := "census.record.unspelled", value := "35" },
  { key := "cell.C-EQPM", value := "YES" }
]

theorem check_1 : rows.length = 8 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQPM" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "census.record.spelled" && r.value == "3")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "census.record.readout" && r.value == "8")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "census.record.unspelled" && r.value == "35")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqpm.first.untyped" && r.value == "NONE")).length = 1 := by decide

theorem checks :
    (rows.length = 8) /\
    ((rows.filter (fun r => r.key == "cell.C-EQPM" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "census.record.spelled" && r.value == "3")).length = 1) /\
    ((rows.filter (fun r => r.key == "census.record.readout" && r.value == "8")).length = 1) /\
    ((rows.filter (fun r => r.key == "census.record.unspelled" && r.value == "35")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqpm.first.untyped" && r.value == "NONE")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (check_6)))))

end ChainTheory.Data.D527294_ENPC
