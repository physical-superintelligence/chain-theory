namespace ChainTheory.Data.D527937_LJBP

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQBP", value := "YES" },
  { key := "eqbp.cross.T1.sign", value := "POSITIVE" },
  { key := "eqbp.cross.T2.sign", value := "POSITIVE" },
  { key := "eqbp.first.failure", value := "NONE" },
  { key := "eqbp.first.failure.objects", value := "NONE" },
  { key := "eqbp.koide.bp.letter", value := "DEFINED" },
  { key := "eqbp.koide.bp.relation.in.field", value := "NO" },
  { key := "eqbp.koide.reading.of.record", value := "CARRIED" },
  { key := "eqbp.letter", value := "DEFINED" },
  { key := "eqbp.ratio.T2.sign", value := "POSITIVE" },
  { key := "eqbp.reading.of.record", value := "PARTITION" }
]

theorem check_1 : rows.length = 11 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQBP" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqbp.letter" && r.value == "DEFINED")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqbp.first.failure" && r.value == "NONE")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqbp.reading.of.record" && r.value == "PARTITION")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqbp.koide.bp.relation.in.field" && r.value == "NO")).length = 1 := by decide

theorem checks :
    (rows.length = 11) /\
    ((rows.filter (fun r => r.key == "cell.C-EQBP" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqbp.letter" && r.value == "DEFINED")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqbp.first.failure" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqbp.reading.of.record" && r.value == "PARTITION")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqbp.koide.bp.relation.in.field" && r.value == "NO")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (check_6)))))

end ChainTheory.Data.D527937_LJBP
