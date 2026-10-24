import ChainTheory.ConditionUnions

set_option maxRecDepth 100000

namespace ChainTheory.ConditionUnionsNinth

def union_539098_KCFM : ChainTheory.ConditionUnions.ConditionUnion :=
  { address := 539098, stem := "KCFM", members := [{ name := "W-IRCC", address := 529911, grade := "WALL W-IRCC" }, { name := "W-PRCA", address := 535254, grade := "WALL W-PRCA" }, { name := "W-APKC", address := 538128, grade := "WALL W-APKC" }], statedConditions := "THE PARENTS AT THEIR OWN GRADE LINES", letterUnion := "the token alone; the letter union in words to follow", exceedsLetter := true, refereeSixteen := false }

def union_539285_TFLR : ChainTheory.ConditionUnions.ConditionUnion :=
  { address := 539285, stem := "TFLR", members := [{ name := "W-HDSR", address := 521835, grade := "WALL W-HDSR" }, { name := "RDSG-T1", address := 524640, grade := "THM RDSG-T1 CONDITIONAL" }, { name := "W-GENJ", address := 531628, grade := "WALL W-GENJ" }], statedConditions := "THE PARENTS AT THEIR OWN GRADE LINES", letterUnion := "the token alone; the letter union in words to follow", exceedsLetter := true, refereeSixteen := false }

def union_539493_ZMRH : ChainTheory.ConditionUnions.ConditionUnion :=
  { address := 539493, stem := "ZMRH", members := [{ name := "W-DOLE", address := 539391, grade := "WALL W-DOLE" }], statedConditions := "THE PARENTS AT THEIR OWN GRADE LINES", letterUnion := "the token alone; the letter union in words to follow", exceedsLetter := true, refereeSixteen := false }

def union_539543_MPRT : ChainTheory.ConditionUnions.ConditionUnion :=
  { address := 539543, stem := "MPRT", members := [{ name := "W-HLPN", address := 526896, grade := "WALL W-HLPN" }, { name := "W-ELWS", address := 538046, grade := "WALL W-ELWS" }, { name := "W-TPRD", address := 539176, grade := "WALL W-TPRD" }], statedConditions := "THE PARENTS AT THEIR OWN GRADE LINES", letterUnion := "the token alone; the letter union in words to follow", exceedsLetter := true, refereeSixteen := false }

def owed_523593_CCDD : ChainTheory.ConditionUnions.ConditionUnion :=
  { address := 523593, stem := "CCDD", members := [{ name := "W-IVCS", address := 510557, grade := "WALL W-IVCS" }, { name := "W-HSDF", address := 515033, grade := "WALL W-HSDF" }, { name := "PFD2-T1", address := 516104, grade := "THM PFD2-T1 CONDITIONAL" }, { name := "UWC2-T1", address := 516343, grade := "THM UWC2-T1 CONDITIONAL" }, { name := "class_CTSL", address := 517351, grade := "WALL class_CTSL" }, { name := "W-STOD", address := 521208, grade := "WALL W-STOD" }, { name := "W-SDWP", address := 521707, grade := "WALL W-SDWP" }, { name := "DCRS-T1", address := 521989, grade := "THM DCRS-T1 CONDITIONAL" }, { name := "GQDS-T1", address := 522474, grade := "THM GQDS-T1 CONDITIONAL" }], statedConditions := "THE PARENTS AT THEIR OWN GRADE LINES; the row CONDITIONAL at its GRADE line; the added member 517351:WALL class_CTSL (typed by the index of record, unnamed in the map)", letterUnion := "the letter union in words at 3 labels: EWDI-T1 W-ISMS W-SROI", exceedsLetter := true, refereeSixteen := false }

def owed_519215_MDEO : ChainTheory.ConditionUnions.ConditionUnion :=
  { address := 519215, stem := "MDEO", members := [{ name := "TKDP-T1", address := 510035, grade := "THM TKDP-T1 CONDITIONAL" }, { name := "W-DPMN", address := 510135, grade := "WALL W-DPMN" }, { name := "W-IVCS", address := 510557, grade := "WALL W-IVCS" }, { name := "W-MXRE", address := 515893, grade := "WALL W-MXRE" }, { name := "PFD2-T1", address := 516104, grade := "THM PFD2-T1 CONDITIONAL" }, { name := "UWC2-T1", address := 516343, grade := "THM UWC2-T1 CONDITIONAL" }, { name := "class_NORN", address := 517380, grade := "WALL class_NORN" }, { name := "W-CSPN", address := 517615, grade := "WALL W-CSPN" }, { name := "W-PLMX", address := 517843, grade := "WALL W-PLMX" }, { name := "W-NNRD", address := 518262, grade := "WALL W-NNRD" }], statedConditions := "THE PARENTS AT THEIR OWN GRADE LINES; the row CONDITIONAL at its GRADE line; the added member 517380:WALL class_NORN (typed by the index of record, unnamed in the map); further parents without a grade line: 371729, 400066", letterUnion := "the letter union in words at zero labels", exceedsLetter := true, refereeSixteen := false }

def unionsNinth : List ChainTheory.ConditionUnions.ConditionUnion := [union_539098_KCFM, union_539285_TFLR, union_539493_ZMRH, union_539543_MPRT]

def unionsOwedNinth : List ChainTheory.ConditionUnions.ConditionUnion := [owed_523593_CCDD, owed_519215_MDEO]

theorem unions_census_ninth : unionsNinth.length = 4 /\ (unionsNinth.map (fun u => u.members.length)).foldl (fun a b => a + b) 0 = 10 /\ unionsOwedNinth.length = 2 /\ (unionsOwedNinth.map (fun u => u.members.length)).foldl (fun a b => a + b) 0 = 19 /\ (unionsOwedNinth.filter (fun u => u.members.length == 0)).length = 0 := by decide

end ChainTheory.ConditionUnionsNinth
