namespace ChainTheory.Data.D529099_LSRC

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "loops.webs", value := "0" },
  { key := "loops.links", value := "0" },
  { key := "loops.sinks", value := "0" },
  { key := "loops.by.wave", value := "NONE" },
  { key := "loops.first", value := "NONE" },
  { key := "eqcl.loops.links.parent", value := "2319" },
  { key := "eqcl.loops.links.this", value := "0" },
  { key := "eqcl.loops.webs.parent", value := "2251" },
  { key := "eqcl.loops.webs.this", value := "0" },
  { key := "eqcl.loops.sinks.parent", value := "1389" },
  { key := "eqcl.loops.sinks.this", value := "0" },
  { key := "eqcl.face", value := "A" },
  { key := "eqcl.faceA", value := "YES" },
  { key := "eqcl.faceB", value := "NO" },
  { key := "eqcl.faceB.first", value := "NONE" },
  { key := "cell.C-EQCL", value := "YES" }
]

theorem check_1 : rows.length = 16 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "loops.webs" && r.value == "0")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "loops.links" && r.value == "0")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "loops.sinks" && r.value == "0")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "loops.by.wave" && r.value == "NONE")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "loops.first" && r.value == "NONE")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqcl.loops.links.parent" && r.value == "2319")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "eqcl.loops.links.this" && r.value == "0")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "eqcl.loops.webs.parent" && r.value == "2251")).length = 1 := by decide

theorem check_10 : (rows.filter (fun r => r.key == "eqcl.loops.webs.this" && r.value == "0")).length = 1 := by decide

theorem check_11 : (rows.filter (fun r => r.key == "eqcl.loops.sinks.parent" && r.value == "1389")).length = 1 := by decide

theorem check_12 : (rows.filter (fun r => r.key == "eqcl.loops.sinks.this" && r.value == "0")).length = 1 := by decide

theorem check_13 : (rows.filter (fun r => r.key == "eqcl.face" && r.value == "A")).length = 1 := by decide

theorem check_14 : (rows.filter (fun r => r.key == "eqcl.faceA" && r.value == "YES")).length = 1 := by decide

theorem check_15 : (rows.filter (fun r => r.key == "eqcl.faceB" && r.value == "NO")).length = 1 := by decide

theorem check_16 : (rows.filter (fun r => r.key == "eqcl.faceB.first" && r.value == "NONE")).length = 1 := by decide

theorem check_17 : (rows.filter (fun r => r.key == "cell.C-EQCL" && r.value == "YES")).length = 1 := by decide

theorem checks :
    (rows.length = 16) /\
    ((rows.filter (fun r => r.key == "loops.webs" && r.value == "0")).length = 1) /\
    ((rows.filter (fun r => r.key == "loops.links" && r.value == "0")).length = 1) /\
    ((rows.filter (fun r => r.key == "loops.sinks" && r.value == "0")).length = 1) /\
    ((rows.filter (fun r => r.key == "loops.by.wave" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "loops.first" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcl.loops.links.parent" && r.value == "2319")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcl.loops.links.this" && r.value == "0")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcl.loops.webs.parent" && r.value == "2251")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcl.loops.webs.this" && r.value == "0")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcl.loops.sinks.parent" && r.value == "1389")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcl.loops.sinks.this" && r.value == "0")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcl.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcl.faceA" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcl.faceB" && r.value == "NO")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcl.faceB.first" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQCL" && r.value == "YES")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (And.intro check_9 (And.intro check_10 (And.intro check_11 (And.intro check_12 (And.intro check_13 (And.intro check_14 (And.intro check_15 (And.intro check_16 (check_17))))))))))))))))

end ChainTheory.Data.D529099_LSRC
