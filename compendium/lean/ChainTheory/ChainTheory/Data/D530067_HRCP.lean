namespace ChainTheory.Data.D530067_HRCP

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "eqcr.OBJECT.COMPOSED.beside.r-HIG", value := "NO-CYCLE" },
  { key := "eqcr.OBJECT.COMPOSED.carriers.equal", value := "0 of 2" },
  { key := "eqcr.OBJECT.COMPOSED.face.A", value := "NO" },
  { key := "eqcr.OBJECT.COMPOSED.first.carrier.parting", value := "r-Z0D" },
  { key := "eqcr.OBJECT.MEMBER.beside.r-HIG", value := "NO-CYCLE" },
  { key := "eqcr.OBJECT.MEMBER.carriers.equal", value := "2 of 2" },
  { key := "eqcr.OBJECT.MEMBER.face.A", value := "YES" },
  { key := "eqcr.OBJECT.MEMBER.first.carrier.parting", value := "NONE" },
  { key := "eqcr.OBJECT.MEMBER.first.carrier.parting.objects", value := "NONE" },
  { key := "eqcr.OBJECT.ORDER.beside.r-HIG", value := "NO-CYCLE" },
  { key := "eqcr.OBJECT.ORDER.carriers.equal", value := "2 of 2" },
  { key := "eqcr.OBJECT.ORDER.face.A", value := "YES" },
  { key := "eqcr.OBJECT.ORDER.first.carrier.parting", value := "NONE" },
  { key := "eqcr.OBJECT.ORDER.first.carrier.parting.objects", value := "NONE" },
  { key := "eqcr.OBJECT.PHASE-CONTENT.beside.r-HIG", value := "NO-CYCLE" },
  { key := "eqcr.OBJECT.PHASE-CONTENT.carriers.equal", value := "0 of 2" },
  { key := "eqcr.OBJECT.PHASE-CONTENT.face.A", value := "NO" },
  { key := "eqcr.OBJECT.PHASE-CONTENT.first.carrier.parting", value := "r-Z0D" },
  { key := "eqcr.OBJECT.PRIMITIVE-ROOT.beside.r-HIG", value := "NO-CYCLE" },
  { key := "eqcr.OBJECT.PRIMITIVE-ROOT.carriers.equal", value := "2 of 2" },
  { key := "eqcr.OBJECT.PRIMITIVE-ROOT.face.A", value := "YES" },
  { key := "eqcr.OBJECT.PRIMITIVE-ROOT.first.carrier.parting", value := "NONE" },
  { key := "eqcr.OBJECT.PRIMITIVE-ROOT.first.carrier.parting.objects", value := "NONE" },
  { key := "eqcr.WORD.COMPOSED.beside.r-HIG", value := "NO-CYCLE" },
  { key := "eqcr.WORD.COMPOSED.carriers.equal", value := "0 of 3" },
  { key := "eqcr.WORD.COMPOSED.face.A", value := "NO" },
  { key := "eqcr.WORD.COMPOSED.first.carrier.parting", value := "r-WPM" },
  { key := "eqcr.WORD.MEMBER.beside.r-HIG", value := "NO-CYCLE" },
  { key := "eqcr.WORD.MEMBER.carriers.equal", value := "3 of 3" },
  { key := "eqcr.WORD.MEMBER.face.A", value := "YES" },
  { key := "eqcr.WORD.MEMBER.first.carrier.parting", value := "NONE" },
  { key := "eqcr.WORD.MEMBER.first.carrier.parting.objects", value := "NONE" },
  { key := "eqcr.WORD.ORDER.beside.r-HIG", value := "NO-CYCLE" },
  { key := "eqcr.WORD.ORDER.carriers.equal", value := "3 of 3" },
  { key := "eqcr.WORD.ORDER.face.A", value := "YES" },
  { key := "eqcr.WORD.ORDER.first.carrier.parting", value := "NONE" },
  { key := "eqcr.WORD.ORDER.first.carrier.parting.objects", value := "NONE" },
  { key := "eqcr.WORD.PHASE-CONTENT.beside.r-HIG", value := "NO-CYCLE" },
  { key := "eqcr.WORD.PHASE-CONTENT.carriers.equal", value := "0 of 3" },
  { key := "eqcr.WORD.PHASE-CONTENT.face.A", value := "NO" },
  { key := "eqcr.WORD.PHASE-CONTENT.first.carrier.parting", value := "r-WPM" },
  { key := "eqcr.WORD.PRIMITIVE-ROOT.beside.r-HIG", value := "NO-CYCLE" },
  { key := "eqcr.WORD.PRIMITIVE-ROOT.carriers.equal", value := "3 of 3" },
  { key := "eqcr.WORD.PRIMITIVE-ROOT.face.A", value := "YES" },
  { key := "eqcr.WORD.PRIMITIVE-ROOT.first.carrier.parting", value := "NONE" },
  { key := "eqcr.WORD.PRIMITIVE-ROOT.first.carrier.parting.objects", value := "NONE" },
  { key := "eqcr.carriers.equal", value := "3 of 3" },
  { key := "eqcr.face.A", value := "YES" },
  { key := "eqcr.face.B", value := "NO" },
  { key := "eqcr.face.record", value := "WORD" },
  { key := "eqcr.first.carrier.parting", value := "NONE" },
  { key := "eqcr.first.carrier.parting.objects", value := "NONE" },
  { key := "eqcr.reading.record", value := "PRIMITIVE-ROOT" }
]

theorem check_1 : rows.length = 53 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "eqcr.OBJECT.COMPOSED.beside.r-HIG" && r.value == "NO-CYCLE")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "eqcr.OBJECT.COMPOSED.carriers.equal" && r.value == "0 of 2")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "eqcr.OBJECT.COMPOSED.face.A" && r.value == "NO")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "eqcr.OBJECT.COMPOSED.first.carrier.parting" && r.value == "r-Z0D")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "eqcr.OBJECT.MEMBER.beside.r-HIG" && r.value == "NO-CYCLE")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "eqcr.OBJECT.MEMBER.carriers.equal" && r.value == "2 of 2")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "eqcr.OBJECT.MEMBER.face.A" && r.value == "YES")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "eqcr.OBJECT.MEMBER.first.carrier.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_10 : (rows.filter (fun r => r.key == "eqcr.OBJECT.MEMBER.first.carrier.parting.objects" && r.value == "NONE")).length = 1 := by decide

theorem check_11 : (rows.filter (fun r => r.key == "eqcr.OBJECT.ORDER.beside.r-HIG" && r.value == "NO-CYCLE")).length = 1 := by decide

theorem check_12 : (rows.filter (fun r => r.key == "eqcr.OBJECT.ORDER.carriers.equal" && r.value == "2 of 2")).length = 1 := by decide

theorem check_13 : (rows.filter (fun r => r.key == "eqcr.OBJECT.ORDER.face.A" && r.value == "YES")).length = 1 := by decide

theorem check_14 : (rows.filter (fun r => r.key == "eqcr.OBJECT.ORDER.first.carrier.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_15 : (rows.filter (fun r => r.key == "eqcr.OBJECT.ORDER.first.carrier.parting.objects" && r.value == "NONE")).length = 1 := by decide

theorem check_16 : (rows.filter (fun r => r.key == "eqcr.OBJECT.PHASE-CONTENT.beside.r-HIG" && r.value == "NO-CYCLE")).length = 1 := by decide

theorem check_17 : (rows.filter (fun r => r.key == "eqcr.OBJECT.PHASE-CONTENT.carriers.equal" && r.value == "0 of 2")).length = 1 := by decide

theorem check_18 : (rows.filter (fun r => r.key == "eqcr.OBJECT.PHASE-CONTENT.face.A" && r.value == "NO")).length = 1 := by decide

theorem check_19 : (rows.filter (fun r => r.key == "eqcr.OBJECT.PHASE-CONTENT.first.carrier.parting" && r.value == "r-Z0D")).length = 1 := by decide

theorem check_20 : (rows.filter (fun r => r.key == "eqcr.OBJECT.PRIMITIVE-ROOT.beside.r-HIG" && r.value == "NO-CYCLE")).length = 1 := by decide

theorem check_21 : (rows.filter (fun r => r.key == "eqcr.OBJECT.PRIMITIVE-ROOT.carriers.equal" && r.value == "2 of 2")).length = 1 := by decide

theorem check_22 : (rows.filter (fun r => r.key == "eqcr.OBJECT.PRIMITIVE-ROOT.face.A" && r.value == "YES")).length = 1 := by decide

theorem check_23 : (rows.filter (fun r => r.key == "eqcr.OBJECT.PRIMITIVE-ROOT.first.carrier.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_24 : (rows.filter (fun r => r.key == "eqcr.OBJECT.PRIMITIVE-ROOT.first.carrier.parting.objects" && r.value == "NONE")).length = 1 := by decide

theorem check_25 : (rows.filter (fun r => r.key == "eqcr.WORD.COMPOSED.beside.r-HIG" && r.value == "NO-CYCLE")).length = 1 := by decide

theorem check_26 : (rows.filter (fun r => r.key == "eqcr.WORD.COMPOSED.carriers.equal" && r.value == "0 of 3")).length = 1 := by decide

theorem check_27 : (rows.filter (fun r => r.key == "eqcr.WORD.COMPOSED.face.A" && r.value == "NO")).length = 1 := by decide

theorem check_28 : (rows.filter (fun r => r.key == "eqcr.WORD.COMPOSED.first.carrier.parting" && r.value == "r-WPM")).length = 1 := by decide

theorem check_29 : (rows.filter (fun r => r.key == "eqcr.WORD.MEMBER.beside.r-HIG" && r.value == "NO-CYCLE")).length = 1 := by decide

theorem check_30 : (rows.filter (fun r => r.key == "eqcr.WORD.MEMBER.carriers.equal" && r.value == "3 of 3")).length = 1 := by decide

theorem check_31 : (rows.filter (fun r => r.key == "eqcr.WORD.MEMBER.face.A" && r.value == "YES")).length = 1 := by decide

theorem check_32 : (rows.filter (fun r => r.key == "eqcr.WORD.MEMBER.first.carrier.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_33 : (rows.filter (fun r => r.key == "eqcr.WORD.MEMBER.first.carrier.parting.objects" && r.value == "NONE")).length = 1 := by decide

theorem check_34 : (rows.filter (fun r => r.key == "eqcr.WORD.ORDER.beside.r-HIG" && r.value == "NO-CYCLE")).length = 1 := by decide

theorem check_35 : (rows.filter (fun r => r.key == "eqcr.WORD.ORDER.carriers.equal" && r.value == "3 of 3")).length = 1 := by decide

theorem check_36 : (rows.filter (fun r => r.key == "eqcr.WORD.ORDER.face.A" && r.value == "YES")).length = 1 := by decide

theorem check_37 : (rows.filter (fun r => r.key == "eqcr.WORD.ORDER.first.carrier.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_38 : (rows.filter (fun r => r.key == "eqcr.WORD.ORDER.first.carrier.parting.objects" && r.value == "NONE")).length = 1 := by decide

theorem check_39 : (rows.filter (fun r => r.key == "eqcr.WORD.PHASE-CONTENT.beside.r-HIG" && r.value == "NO-CYCLE")).length = 1 := by decide

theorem check_40 : (rows.filter (fun r => r.key == "eqcr.WORD.PHASE-CONTENT.carriers.equal" && r.value == "0 of 3")).length = 1 := by decide

theorem check_41 : (rows.filter (fun r => r.key == "eqcr.WORD.PHASE-CONTENT.face.A" && r.value == "NO")).length = 1 := by decide

theorem check_42 : (rows.filter (fun r => r.key == "eqcr.WORD.PHASE-CONTENT.first.carrier.parting" && r.value == "r-WPM")).length = 1 := by decide

theorem check_43 : (rows.filter (fun r => r.key == "eqcr.WORD.PRIMITIVE-ROOT.beside.r-HIG" && r.value == "NO-CYCLE")).length = 1 := by decide

theorem check_44 : (rows.filter (fun r => r.key == "eqcr.WORD.PRIMITIVE-ROOT.carriers.equal" && r.value == "3 of 3")).length = 1 := by decide

theorem check_45 : (rows.filter (fun r => r.key == "eqcr.WORD.PRIMITIVE-ROOT.face.A" && r.value == "YES")).length = 1 := by decide

theorem check_46 : (rows.filter (fun r => r.key == "eqcr.WORD.PRIMITIVE-ROOT.first.carrier.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_47 : (rows.filter (fun r => r.key == "eqcr.WORD.PRIMITIVE-ROOT.first.carrier.parting.objects" && r.value == "NONE")).length = 1 := by decide

theorem check_48 : (rows.filter (fun r => r.key == "eqcr.carriers.equal" && r.value == "3 of 3")).length = 1 := by decide

theorem check_49 : (rows.filter (fun r => r.key == "eqcr.face.A" && r.value == "YES")).length = 1 := by decide

theorem check_50 : (rows.filter (fun r => r.key == "eqcr.face.B" && r.value == "NO")).length = 1 := by decide

theorem check_51 : (rows.filter (fun r => r.key == "eqcr.face.record" && r.value == "WORD")).length = 1 := by decide

theorem check_52 : (rows.filter (fun r => r.key == "eqcr.first.carrier.parting" && r.value == "NONE")).length = 1 := by decide

theorem check_53 : (rows.filter (fun r => r.key == "eqcr.first.carrier.parting.objects" && r.value == "NONE")).length = 1 := by decide

theorem check_54 : (rows.filter (fun r => r.key == "eqcr.reading.record" && r.value == "PRIMITIVE-ROOT")).length = 1 := by decide

theorem checks :
    (rows.length = 53) /\
    ((rows.filter (fun r => r.key == "eqcr.OBJECT.COMPOSED.beside.r-HIG" && r.value == "NO-CYCLE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.OBJECT.COMPOSED.carriers.equal" && r.value == "0 of 2")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.OBJECT.COMPOSED.face.A" && r.value == "NO")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.OBJECT.COMPOSED.first.carrier.parting" && r.value == "r-Z0D")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.OBJECT.MEMBER.beside.r-HIG" && r.value == "NO-CYCLE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.OBJECT.MEMBER.carriers.equal" && r.value == "2 of 2")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.OBJECT.MEMBER.face.A" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.OBJECT.MEMBER.first.carrier.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.OBJECT.MEMBER.first.carrier.parting.objects" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.OBJECT.ORDER.beside.r-HIG" && r.value == "NO-CYCLE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.OBJECT.ORDER.carriers.equal" && r.value == "2 of 2")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.OBJECT.ORDER.face.A" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.OBJECT.ORDER.first.carrier.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.OBJECT.ORDER.first.carrier.parting.objects" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.OBJECT.PHASE-CONTENT.beside.r-HIG" && r.value == "NO-CYCLE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.OBJECT.PHASE-CONTENT.carriers.equal" && r.value == "0 of 2")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.OBJECT.PHASE-CONTENT.face.A" && r.value == "NO")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.OBJECT.PHASE-CONTENT.first.carrier.parting" && r.value == "r-Z0D")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.OBJECT.PRIMITIVE-ROOT.beside.r-HIG" && r.value == "NO-CYCLE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.OBJECT.PRIMITIVE-ROOT.carriers.equal" && r.value == "2 of 2")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.OBJECT.PRIMITIVE-ROOT.face.A" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.OBJECT.PRIMITIVE-ROOT.first.carrier.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.OBJECT.PRIMITIVE-ROOT.first.carrier.parting.objects" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.WORD.COMPOSED.beside.r-HIG" && r.value == "NO-CYCLE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.WORD.COMPOSED.carriers.equal" && r.value == "0 of 3")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.WORD.COMPOSED.face.A" && r.value == "NO")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.WORD.COMPOSED.first.carrier.parting" && r.value == "r-WPM")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.WORD.MEMBER.beside.r-HIG" && r.value == "NO-CYCLE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.WORD.MEMBER.carriers.equal" && r.value == "3 of 3")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.WORD.MEMBER.face.A" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.WORD.MEMBER.first.carrier.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.WORD.MEMBER.first.carrier.parting.objects" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.WORD.ORDER.beside.r-HIG" && r.value == "NO-CYCLE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.WORD.ORDER.carriers.equal" && r.value == "3 of 3")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.WORD.ORDER.face.A" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.WORD.ORDER.first.carrier.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.WORD.ORDER.first.carrier.parting.objects" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.WORD.PHASE-CONTENT.beside.r-HIG" && r.value == "NO-CYCLE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.WORD.PHASE-CONTENT.carriers.equal" && r.value == "0 of 3")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.WORD.PHASE-CONTENT.face.A" && r.value == "NO")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.WORD.PHASE-CONTENT.first.carrier.parting" && r.value == "r-WPM")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.WORD.PRIMITIVE-ROOT.beside.r-HIG" && r.value == "NO-CYCLE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.WORD.PRIMITIVE-ROOT.carriers.equal" && r.value == "3 of 3")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.WORD.PRIMITIVE-ROOT.face.A" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.WORD.PRIMITIVE-ROOT.first.carrier.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.WORD.PRIMITIVE-ROOT.first.carrier.parting.objects" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.carriers.equal" && r.value == "3 of 3")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.face.A" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.face.B" && r.value == "NO")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.face.record" && r.value == "WORD")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.first.carrier.parting" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.first.carrier.parting.objects" && r.value == "NONE")).length = 1) /\
    ((rows.filter (fun r => r.key == "eqcr.reading.record" && r.value == "PRIMITIVE-ROOT")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (And.intro check_9 (And.intro check_10 (And.intro check_11 (And.intro check_12 (And.intro check_13 (And.intro check_14 (And.intro check_15 (And.intro check_16 (And.intro check_17 (And.intro check_18 (And.intro check_19 (And.intro check_20 (And.intro check_21 (And.intro check_22 (And.intro check_23 (And.intro check_24 (And.intro check_25 (And.intro check_26 (And.intro check_27 (And.intro check_28 (And.intro check_29 (And.intro check_30 (And.intro check_31 (And.intro check_32 (And.intro check_33 (And.intro check_34 (And.intro check_35 (And.intro check_36 (And.intro check_37 (And.intro check_38 (And.intro check_39 (And.intro check_40 (And.intro check_41 (And.intro check_42 (And.intro check_43 (And.intro check_44 (And.intro check_45 (And.intro check_46 (And.intro check_47 (And.intro check_48 (And.intro check_49 (And.intro check_50 (And.intro check_51 (And.intro check_52 (And.intro check_53 (check_54)))))))))))))))))))))))))))))))))))))))))))))))))))))

end ChainTheory.Data.D530067_HRCP
