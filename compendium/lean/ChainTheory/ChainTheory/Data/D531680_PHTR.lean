namespace ChainTheory.Data.D531680_PHTR

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "eqpt.face", value := "A" },
  { key := "eqpt.transition", value := "YES" },
  { key := "eqpt.changes", value := "9377" },
  { key := "eqpt.only.at.cap", value := "NO" },
  { key := "eqpt.crit.classes", value := "CHARGED>DARK" },
  { key := "eqpt.missing", value := "NONE" },
  { key := "ordp.strict.CGB2", value := "STRICTLY-INCREASING" },
  { key := "phtr.cm11", value := "GATED-AT-TH-25-BY-AN-UNKEYED-TABLE-ENTRY" },
  { key := "phtr.th17", value := "THE-ENTROPY-READING-OF-530584-BESIDE-W-THE-ENTROPY-AT-STRICT-TH-17" },
  { key := "cell.C-EQPT", value := "YES" }
]

theorem check_1 : rows.length = 10 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "eqpt.face" && r.value == "A")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqpt.transition" && r.value == "YES")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqpt.changes" && r.value == "9377")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqpt.only.at.cap" && r.value == "NO")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqpt.crit.classes" && r.value == "CHARGED>DARK")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqpt.missing" && r.value == "NONE")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "ordp.strict.CGB2" && r.value == "STRICTLY-INCREASING")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "phtr.cm11" && r.value == "GATED-AT-TH-25-BY-AN-UNKEYED-TABLE-ENTRY")).length = 1 := by decide

theorem check_10 : (rows.filter (fun r => r.key == "phtr.th17" && r.value == "THE-ENTROPY-READING-OF-530584-BESIDE-W-THE-ENTROPY-AT-STRICT-TH-17")).length = 1 := by decide

theorem check_11 : (rows.filter (fun r => r.key == "cell.C-EQPT" && r.value == "YES")).length = 1 := by decide

theorem checks :
    (rows.length = 10) /\
    ((rows.filter (fun r => r.key == "eqpt.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqpt.transition" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqpt.changes" && r.value == "9377")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqpt.only.at.cap" && r.value == "NO")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqpt.crit.classes" && r.value == "CHARGED>DARK")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqpt.missing" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "ordp.strict.CGB2" && r.value == "STRICTLY-INCREASING")).length = 1) /\
    ((rows.filter (fun r => r.key == "phtr.cm11" && r.value == "GATED-AT-TH-25-BY-AN-UNKEYED-TABLE-ENTRY")).length = 1) /\
    ((rows.filter (fun r => r.key == "phtr.th17" && r.value == "THE-ENTROPY-READING-OF-530584-BESIDE-W-THE-ENTROPY-AT-STRICT-TH-17")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQPT" && r.value == "YES")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (And.intro check_9 (And.intro check_10 (check_11))))))))))

end ChainTheory.Data.D531680_PHTR
