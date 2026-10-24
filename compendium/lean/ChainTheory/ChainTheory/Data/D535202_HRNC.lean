set_option maxRecDepth 100000

namespace ChainTheory.Data.D535202_HRNC

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQCH", value := "YES" },
  { key := "eqch.FIRST.cell", value := "YES" },
  { key := "eqch.FIRST.face", value := "A" },
  { key := "eqch.FIRST.first.parting.sink", value := "NONE" },
  { key := "eqch.MEAN.cell", value := "NO" },
  { key := "eqch.MEAN.face", value := "B" },
  { key := "eqch.PERIOD.cell", value := "YES" },
  { key := "eqch.PERIOD.face", value := "A" },
  { key := "eqch.PERIOD.first.parting.sink", value := "NONE" },
  { key := "eqch.face", value := "A" },
  { key := "eqch.first.parting", value := "NONE" },
  { key := "eqch.reading.of.record", value := "PERIOD" }
]

theorem check_1 : rows.length = 12 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQCH" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqch.FIRST.cell" && r.value == "YES")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqch.FIRST.face" && r.value == "A")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqch.FIRST.first.parting.sink" && r.value == "NONE")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqch.MEAN.cell" && r.value == "NO")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqch.MEAN.face" && r.value == "B")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "eqch.PERIOD.cell" && r.value == "YES")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "eqch.PERIOD.face" && r.value == "A")).length = 1 := by decide

theorem check_10 : (rows.filter (fun r => r.key == "eqch.PERIOD.first.parting.sink" && r.value == "NONE")).length = 1 := by decide

theorem check_11 : (rows.filter (fun r => r.key == "eqch.face" && r.value == "A")).length = 1 := by decide

theorem check_12 : (rows.filter (fun r => r.key == "eqch.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_13 : (rows.filter (fun r => r.key == "eqch.reading.of.record" && r.value == "PERIOD")).length = 1 := by decide

theorem checks :
    (rows.length = 12) /\
    ((rows.filter (fun r => r.key == "cell.C-EQCH" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqch.FIRST.cell" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqch.FIRST.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqch.FIRST.first.parting.sink" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqch.MEAN.cell" && r.value == "NO")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqch.MEAN.face" && r.value == "B")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqch.PERIOD.cell" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqch.PERIOD.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqch.PERIOD.first.parting.sink" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqch.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqch.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqch.reading.of.record" && r.value == "PERIOD")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (And.intro check_9 (And.intro check_10 (And.intro check_11 (And.intro check_12 (check_13))))))))))))

end ChainTheory.Data.D535202_HRNC
