namespace ChainTheory.Data.D531107_FDIS

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQFD", value := "NO" },
  { key := "eqfd.cells.remet", value := "48 of 49" },
  { key := "eqfd.face", value := "B" },
  { key := "eqfd.faces.one.law", value := "YES" },
  { key := "eqfd.first.parting.row", value := "NONE" },
  { key := "eqfd.ratio.carries.no.face", value := "YES" }
]

theorem check_1 : rows.length = 6 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQFD" && r.value == "NO")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqfd.cells.remet" && r.value == "48 of 49")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqfd.face" && r.value == "B")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqfd.faces.one.law" && r.value == "YES")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqfd.first.parting.row" && r.value == "NONE")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqfd.ratio.carries.no.face" && r.value == "YES")).length = 1 := by decide

theorem checks :
    (rows.length = 6) /\
    ((rows.filter (fun r => r.key == "cell.C-EQFD" && r.value == "NO")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfd.cells.remet" && r.value == "48 of 49")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfd.face" && r.value == "B")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfd.faces.one.law" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfd.first.parting.row" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqfd.ratio.carries.no.face" && r.value == "YES")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (check_7))))))

end ChainTheory.Data.D531107_FDIS
