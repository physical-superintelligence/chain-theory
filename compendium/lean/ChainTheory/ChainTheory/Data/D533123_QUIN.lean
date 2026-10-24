set_option maxRecDepth 100000

namespace ChainTheory.Data.D533123_QUIN

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "cell.C-EQQN", value := "YES" },
  { key := "eq.face", value := "A" },
  { key := "eq.letter", value := "REACHES-AT-NO-NEW-RADICAND" },
  { key := "eq.faceA.met", value := "YES" },
  { key := "eq.faceB.met", value := "NO" },
  { key := "eq.first.refusing", value := "NONE" },
  { key := "eq.sexit.reaches", value := "YES" },
  { key := "eq.sexit.radicands.within", value := "YES" },
  { key := "eq.sexit.newfactor.pairket", value := "NO" },
  { key := "eq.ququint.reaches", value := "YES" },
  { key := "eq.ququart.reaches", value := "YES" },
  { key := "eq.faces.present", value := "YES" }
]

theorem check_1 : rows.length = 12 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "cell.C-EQQN" && r.value == "YES")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eq.face" && r.value == "A")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eq.letter" && r.value == "REACHES-AT-NO-NEW-RADICAND")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eq.faceA.met" && r.value == "YES")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eq.faceB.met" && r.value == "NO")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eq.first.refusing" && r.value == "NONE")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "eq.sexit.reaches" && r.value == "YES")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "eq.sexit.radicands.within" && r.value == "YES")).length = 1 := by decide

theorem check_10 : (rows.filter (fun r => r.key == "eq.sexit.newfactor.pairket" && r.value == "NO")).length = 1 := by decide

theorem check_11 : (rows.filter (fun r => r.key == "eq.ququint.reaches" && r.value == "YES")).length = 1 := by decide

theorem check_12 : (rows.filter (fun r => r.key == "eq.ququart.reaches" && r.value == "YES")).length = 1 := by decide

theorem check_13 : (rows.filter (fun r => r.key == "eq.faces.present" && r.value == "YES")).length = 1 := by decide

theorem checks :
    (rows.length = 12) /\
    ((rows.filter (fun r => r.key == "cell.C-EQQN" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eq.face" && r.value == "A")).length = 1) /\
    ((rows.filter (fun r => r.key == "eq.letter" && r.value == "REACHES-AT-NO-NEW-RADICAND")).length = 1) /\
    ((rows.filter (fun r => r.key == "eq.faceA.met" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eq.faceB.met" && r.value == "NO")).length = 1) /\
    ((rows.filter (fun r => r.key == "eq.first.refusing" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eq.sexit.reaches" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eq.sexit.radicands.within" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eq.sexit.newfactor.pairket" && r.value == "NO")).length = 1) /\
    ((rows.filter (fun r => r.key == "eq.ququint.reaches" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eq.ququart.reaches" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eq.faces.present" && r.value == "YES")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (And.intro check_9 (And.intro check_10 (And.intro check_11 (And.intro check_12 (check_13))))))))))))

end ChainTheory.Data.D533123_QUIN
