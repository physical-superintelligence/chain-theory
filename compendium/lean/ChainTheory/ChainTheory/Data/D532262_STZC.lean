namespace ChainTheory.Data.D532262_STZC

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "eqsz.chain", value := "212 of 212" },
  { key := "eqsz.chain.first.parting", value := "NONE" },
  { key := "eqsz.face", value := "A" },
  { key := "eqsz.first.parting.clause", value := "NONE" }
]

theorem check_1 : rows.length = 4 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "eqsz.chain" && r.value == "212 of 212")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqsz.chain.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqsz.face" && r.value == "A")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqsz.first.parting.clause" && r.value == "NONE")).length = 1 := by decide

theorem checks :
    (rows.length = 4) /\
    ((rows.filter (fun r => r.key == "eqsz.chain" && r.value == "212 of 212")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqsz.chain.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqsz.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqsz.first.parting.clause" && r.value == "NONE")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (check_5))))

end ChainTheory.Data.D532262_STZC
