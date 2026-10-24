namespace ChainTheory.Data.D529618_NSKC

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "eqns.face", value := "A" },
  { key := "eqns.faceA", value := "YES" },
  { key := "eqns.faceB", value := "NO" },
  { key := "eqns.twin.face", value := "A" },
  { key := "lows.P1.wave", value := "2" },
  { key := "lows.P1.roots", value := "R1" },
  { key := "lows.P1.pairket", value := "YES" },
  { key := "lows.P1.kit", value := "U_DOCKED" },
  { key := "lows.P1.count.at.wave", value := "1" },
  { key := "lows.P1.nearest.below", value := "NONE" },
  { key := "lows.P1.nearest.above", value := "NONE" },
  { key := "cell.C-EQNS", value := "YES" }
]

theorem check_1 : rows.length = 12 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "eqns.face" && r.value == "A")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqns.faceA" && r.value == "YES")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqns.faceB" && r.value == "NO")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqns.twin.face" && r.value == "A")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "lows.P1.wave" && r.value == "2")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "lows.P1.roots" && r.value == "R1")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "lows.P1.pairket" && r.value == "YES")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "lows.P1.kit" && r.value == "U_DOCKED")).length = 1 := by decide

theorem check_10 : (rows.filter (fun r => r.key == "lows.P1.count.at.wave" && r.value == "1")).length = 1 := by decide

theorem check_11 : (rows.filter (fun r => r.key == "lows.P1.nearest.below" && r.value == "NONE")).length = 1 := by decide

theorem check_12 : (rows.filter (fun r => r.key == "lows.P1.nearest.above" && r.value == "NONE")).length = 1 := by decide

theorem check_13 : (rows.filter (fun r => r.key == "cell.C-EQNS" && r.value == "YES")).length = 1 := by decide

theorem checks :
    (rows.length = 12) /\
    ((rows.filter (fun r => r.key == "eqns.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqns.faceA" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqns.faceB" && r.value == "NO")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqns.twin.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "lows.P1.wave" && r.value == "2")).length = 1) /\
    ((rows.filter (fun r => r.key == "lows.P1.roots" && r.value == "R1")).length = 1) /\
    ((rows.filter (fun r => r.key == "lows.P1.pairket" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "lows.P1.kit" && r.value == "U_DOCKED")).length = 1) /\
    ((rows.filter (fun r => r.key == "lows.P1.count.at.wave" && r.value == "1")).length = 1) /\
    ((rows.filter (fun r => r.key == "lows.P1.nearest.below" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "lows.P1.nearest.above" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQNS" && r.value == "YES")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (And.intro check_9 (And.intro check_10 (And.intro check_11 (And.intro check_12 (check_13))))))))))))

end ChainTheory.Data.D529618_NSKC
