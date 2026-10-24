set_option maxRecDepth 100000

namespace ChainTheory.Data.D537536_LBSC

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQCB", value := "YES" },
  { key := "eq.face", value := "A" },
  { key := "eq.letter", value := "THEOREM-OF-THE-COUNT-AS-THE-LEADING-TERM" },
  { key := "eq.first", value := "NONE" },
  { key := "eq.clause.body.read.alone", value := "THEOREM" },
  { key := "eq.clause.passage.never.count", value := "THEOREM" },
  { key := "cell.C-WASH", value := "YES" },
  { key := "cell.C-CAPP", value := "YES" },
  { key := "cell.C-LEAD", value := "YES" },
  { key := "deut.typing.decided.by", value := "FIXED" },
  { key := "deut.F.eq.proton", value := "EQUAL" }
]

theorem check_1 : rows.length = 11 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQCB" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eq.face" && r.value == "A")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eq.letter" && r.value == "THEOREM-OF-THE-COUNT-AS-THE-LEADING-TERM")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eq.first" && r.value == "NONE")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eq.clause.body.read.alone" && r.value == "THEOREM")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eq.clause.passage.never.count" && r.value == "THEOREM")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "cell.C-WASH" && r.value == "YES")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "cell.C-CAPP" && r.value == "YES")).length = 1 := by decide

theorem check_10 : (rows.filter (fun r => r.key == "cell.C-LEAD" && r.value == "YES")).length = 1 := by decide

theorem check_11 : (rows.filter (fun r => r.key == "deut.typing.decided.by" && r.value == "FIXED")).length = 1 := by decide

theorem check_12 : (rows.filter (fun r => r.key == "deut.F.eq.proton" && r.value == "EQUAL")).length = 1 := by decide

theorem checks :
    (rows.length = 11) /\
    ((rows.filter (fun r => r.key == "cell.C-EQCB" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eq.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eq.letter" && r.value == "THEOREM-OF-THE-COUNT-AS-THE-LEADING-TERM")).length = 1) /\
    ((rows.filter (fun r => r.key == "eq.first" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eq.clause.body.read.alone" && r.value == "THEOREM")).length = 1) /\
    ((rows.filter (fun r => r.key == "eq.clause.passage.never.count" && r.value == "THEOREM")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-WASH" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-CAPP" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-LEAD" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "deut.typing.decided.by" && r.value == "FIXED")).length = 1) /\
    ((rows.filter (fun r => r.key == "deut.F.eq.proton" && r.value == "EQUAL")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (And.intro check_9 (And.intro check_10 (And.intro check_11 (check_12)))))))))))

end ChainTheory.Data.D537536_LBSC
