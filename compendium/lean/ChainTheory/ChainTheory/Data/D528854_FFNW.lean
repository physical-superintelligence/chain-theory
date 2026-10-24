namespace ChainTheory.Data.D528854_FFNW

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQWF", value := "YES" },
  { key := "eqwf.face", value := "A" },
  { key := "eqwf.first.failure", value := "NONE" },
  { key := "eqwf.first.negative.N", value := "3" },
  { key := "eqwf.first.parting.N", value := "NONE" },
  { key := "eqwf.letter", value := "EQUAL" },
  { key := "eqwf.one.object.identity", value := "4 of 4" },
  { key := "eqwf.route2.eq.parent.grids", value := "4 of 4" },
  { key := "route2.webs.closure.total.eq.closure.read", value := "6 of 6" },
  { key := "route2.webs.eq.parent.grids", value := "4 of 4" },
  { key := "route2.webs.pair.total.eq.swap.square", value := "6 of 6" }
]

theorem check_1 : rows.length = 11 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQWF" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqwf.face" && r.value == "A")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqwf.first.failure" && r.value == "NONE")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqwf.first.negative.N" && r.value == "3")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqwf.first.parting.N" && r.value == "NONE")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqwf.letter" && r.value == "EQUAL")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "eqwf.one.object.identity" && r.value == "4 of 4")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "eqwf.route2.eq.parent.grids" && r.value == "4 of 4")).length = 1 := by decide

theorem check_10 : (rows.filter (fun r => r.key == "route2.webs.closure.total.eq.closure.read" && r.value == "6 of 6")).length = 1 := by decide

theorem check_11 : (rows.filter (fun r => r.key == "route2.webs.eq.parent.grids" && r.value == "4 of 4")).length = 1 := by decide

theorem check_12 : (rows.filter (fun r => r.key == "route2.webs.pair.total.eq.swap.square" && r.value == "6 of 6")).length = 1 := by decide

theorem checks :
    (rows.length = 11) /\
    ((rows.filter (fun r => r.key == "cell.C-EQWF" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqwf.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqwf.first.failure" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqwf.first.negative.N" && r.value == "3")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqwf.first.parting.N" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqwf.letter" && r.value == "EQUAL")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqwf.one.object.identity" && r.value == "4 of 4")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqwf.route2.eq.parent.grids" && r.value == "4 of 4")).length = 1) /\
    ((rows.filter (fun r => r.key == "route2.webs.closure.total.eq.closure.read" && r.value == "6 of 6")).length = 1) /\
    ((rows.filter (fun r => r.key == "route2.webs.eq.parent.grids" && r.value == "4 of 4")).length = 1) /\
    ((rows.filter (fun r => r.key == "route2.webs.pair.total.eq.swap.square" && r.value == "6 of 6")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (And.intro check_9 (And.intro check_10 (And.intro check_11 (check_12)))))))))))

end ChainTheory.Data.D528854_FFNW
