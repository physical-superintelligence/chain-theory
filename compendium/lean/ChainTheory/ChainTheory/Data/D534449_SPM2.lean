set_option maxRecDepth 100000

namespace ChainTheory.Data.D534449_SPM2

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQS2", value := "YES" },
  { key := "eqs2.R0.face", value := "B" },
  { key := "eqs2.R3.face", value := "A" },
  { key := "eqs2.R3.first.parting", value := "NONE" },
  { key := "eqs2.R3.first.parting.sets", value := "NONE" },
  { key := "eqs2.RA.face", value := "A" },
  { key := "eqs2.RA.first.parting", value := "NONE" },
  { key := "eqs2.RA.first.parting.sets", value := "NONE" },
  { key := "eqs2.RB.face", value := "B" },
  { key := "eqs2.RC.face", value := "B" },
  { key := "eqs2.RD.face", value := "B" },
  { key := "eqs2.face", value := "A" },
  { key := "eqs2.first.parting", value := "NONE" }
]

theorem check_1 : rows.length = 13 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQS2" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqs2.R0.face" && r.value == "B")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqs2.R3.face" && r.value == "A")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqs2.R3.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqs2.R3.first.parting.sets" && r.value == "NONE")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqs2.RA.face" && r.value == "A")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "eqs2.RA.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "eqs2.RA.first.parting.sets" && r.value == "NONE")).length = 1 := by decide

theorem check_10 : (rows.filter (fun r => r.key == "eqs2.RB.face" && r.value == "B")).length = 1 := by decide

theorem check_11 : (rows.filter (fun r => r.key == "eqs2.RC.face" && r.value == "B")).length = 1 := by decide

theorem check_12 : (rows.filter (fun r => r.key == "eqs2.RD.face" && r.value == "B")).length = 1 := by decide

theorem check_13 : (rows.filter (fun r => r.key == "eqs2.face" && r.value == "A")).length = 1 := by decide

theorem check_14 : (rows.filter (fun r => r.key == "eqs2.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem checks :
    (rows.length = 13) /\
    ((rows.filter (fun r => r.key == "cell.C-EQS2" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqs2.R0.face" && r.value == "B")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqs2.R3.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqs2.R3.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqs2.R3.first.parting.sets" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqs2.RA.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqs2.RA.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqs2.RA.first.parting.sets" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqs2.RB.face" && r.value == "B")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqs2.RC.face" && r.value == "B")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqs2.RD.face" && r.value == "B")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqs2.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqs2.first.parting" && r.value == "NONE")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (And.intro check_9 (And.intro check_10 (And.intro check_11 (And.intro check_12 (And.intro check_13 (check_14)))))))))))))

end ChainTheory.Data.D534449_SPM2
