set_option maxRecDepth 100000

namespace ChainTheory.Data.D533919_TST4

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "onelink.pair.twirl.BLOCK", value := "EQUAL" },
  { key := "onelink.pair.twirl.DIRECTION", value := "PARTING" },
  { key := "onelink.pair.twirl.ZERO", value := "PARTING" },
  { key := "onelink.pair.twirl.letter", value := "EQUAL" },
  { key := "onelink.pair.remet", value := "YES" },
  { key := "cell.C-CAPS", value := "YES" },
  { key := "cell.C-GIBB", value := "YES" },
  { key := "cell.C-TWRL", value := "YES" },
  { key := "cell.C-EQTS", value := "YES" },
  { key := "eqts.face", value := "FACE-A-EQUAL-AT-EVERY-CAP" },
  { key := "eqts.first.parting", value := "NONE" },
  { key := "eqts.wall.tstc", value := "DISSOLVED-AT-THIS-ROW" }
]

theorem check_1 : rows.length = 12 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "onelink.pair.twirl.BLOCK" && r.value == "EQUAL")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "onelink.pair.twirl.DIRECTION" && r.value == "PARTING")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "onelink.pair.twirl.ZERO" && r.value == "PARTING")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "onelink.pair.twirl.letter" && r.value == "EQUAL")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "onelink.pair.remet" && r.value == "YES")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "cell.C-CAPS" && r.value == "YES")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "cell.C-GIBB" && r.value == "YES")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "cell.C-TWRL" && r.value == "YES")).length = 1 := by decide

theorem check_10 : (rows.filter (fun r => r.key == "cell.C-EQTS" && r.value == "YES")).length = 1 := by decide

theorem check_11 : (rows.filter (fun r => r.key == "eqts.face" && r.value == "FACE-A-EQUAL-AT-EVERY-CAP")).length = 1 := by decide

theorem check_12 : (rows.filter (fun r => r.key == "eqts.first.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_13 : (rows.filter (fun r => r.key == "eqts.wall.tstc" && r.value == "DISSOLVED-AT-THIS-ROW")).length = 1 := by decide

theorem checks :
    (rows.length = 12) /\
    ((rows.filter (fun r => r.key == "onelink.pair.twirl.BLOCK" && r.value == "EQUAL")).length = 1) /\
    ((rows.filter (fun r => r.key == "onelink.pair.twirl.DIRECTION" && r.value == "PARTING")).length = 1) /\
    ((rows.filter (fun r => r.key == "onelink.pair.twirl.ZERO" && r.value == "PARTING")).length = 1) /\
    ((rows.filter (fun r => r.key == "onelink.pair.twirl.letter" && r.value == "EQUAL")).length = 1) /\
    ((rows.filter (fun r => r.key == "onelink.pair.remet" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-CAPS" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-GIBB" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-TWRL" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "cell.C-EQTS" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqts.face" && r.value == "FACE-A-EQUAL-AT-EVERY-CAP")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqts.first.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqts.wall.tstc" && r.value == "DISSOLVED-AT-THIS-ROW")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (And.intro check_9 (And.intro check_10 (And.intro check_11 (And.intro check_12 (check_13))))))))))))

end ChainTheory.Data.D533919_TST4
