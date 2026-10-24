namespace ChainTheory.ConditionUnions

structure Member where
  name : String
  address : Nat
  grade : String
deriving Repr

structure ConditionUnion where
  address : Nat
  stem : String
  members : List Member
  statedConditions : String
  letterUnion : String
  exceedsLetter : Bool
  refereeSixteen : Bool
deriving Repr

def union_528421_TISK : ConditionUnion :=
  { address := 528421, stem := "TISK", members := [{ name := "W-CNCV", address := 521366, grade := "WALL W-CNCV at class IFFC" }, { name := "W-PMGH", address := 525807, grade := "WALL W-PMGH at class EQMG" }, { name := "W-ACAL", address := 526287, grade := "WALL W-ACAL" }, { name := "W-RIMP", address := 526922, grade := "WALL W-RIMP" }, { name := "W-LNUM", address := 526948, grade := "WALL W-LNUM" }, { name := "W-OVCM", address := 527537, grade := "WALL W-OVCM at class EQMV" }, { name := "W-PMAF", address := 528045, grade := "WALL W-PMAF at class CT" }], statedConditions := "THE PARENTS", letterUnion := "the parents; open results it rests on (the move action at the lettering up to isomorphism)", exceedsLetter := true, refereeSixteen := false }

def union_528475_DURA : ConditionUnion :=
  { address := 528475, stem := "DURA", members := [{ name := "THE-ACT-ALPHABET", address := 526287, grade := "WALL W-ACAL" }, { name := "THE-ACTION-OF-EVERY-MOVE-ON-THE-GRADE", address := 527537, grade := "WALL W-OVCM at class EQMV" }, { name := "THE-ADIABATIC-CLASS-AS-RECORD-CLASS-INVARIANCE-UNDER-ONE-MOVE", address := 528125, grade := "WALL W-ADCL at class EQAD" }], statedConditions := "NONE", letterUnion := "open results it rests on (the adiabatic class as record-class invariance under one move, the action of every move on the grade, the act alphabet); tables of record it rests on (the correspondence table of the textbook corpus)", exceedsLetter := false, refereeSixteen := false }

def union_528690_VOFW : ConditionUnion :=
  { address := 528690, stem := "VOFW", members := [], statedConditions := "NONE", letterUnion := "a conditional theorem at its own statement", exceedsLetter := false, refereeSixteen := false }

def union_528772_QEHL : ConditionUnion :=
  { address := 528772, stem := "QEHL", members := [{ name := "W-HPAQ", address := 526667, grade := "WALL W-HPAQ" }, { name := "W-SRBC", address := 527346, grade := "WALL W-SRBC at class EQSS" }, { name := "W-ODFX", address := 528529, grade := "WALL W-ODFX at class EQOD" }, { name := "W-SRLJ", address := 528583, grade := "WALL W-SRLJ at class EQJS" }], statedConditions := "NONE", letterUnion := "none beyond the text of record and the proved results it rests on", exceedsLetter := true, refereeSixteen := true }

def union_528827_XSSF : ConditionUnion :=
  { address := 528827, stem := "XSSF", members := [{ name := "W-NCC3", address := 517351, grade := "WALL at class CTSL" }, { name := "W-PMGH", address := 525807, grade := "WALL W-PMGH at class EQMG" }, { name := "W-CDFO", address := 525884, grade := "WALL W-CDFO at class EQCH" }, { name := "W-ACAL", address := 526287, grade := "WALL W-ACAL" }, { name := "W-ORAC", address := 526414, grade := "WALL W-ORAC" }, { name := "W-NUON", address := 526589, grade := "WALL W-NUON" }, { name := "W-HPAQ", address := 526667, grade := "WALL W-HPAQ" }, { name := "W-DFNM", address := 527483, grade := "WALL W-DFNM" }, { name := "W-TSQA", address := 527804, grade := "WALL W-TSQA" }, { name := "W-DSSM", address := 528231, grade := "WALL W-DSSM" }], statedConditions := "NONE", letterUnion := "none beyond the text of record and the proved results it rests on", exceedsLetter := true, refereeSixteen := false }

def union_528854_FFNW : ConditionUnion :=
  { address := 528854, stem := "FFNW", members := [{ name := "STATISTICS-AS-THE-DOUBLET-SWAP", address := 521707, grade := "WALL W-SDWP at class IFFD" }, { name := "DOUBLET-SWAP-AT-THE-GENERIC-QUBIT-READ", address := 522474, grade := "THM GQDS-T1 CONDITIONAL" }, { name := "THE-QM-COROLLARIES-FROM-NAMED-CLAUSES", address := 527426, grade := "WALL W-QMSX at class EQSX" }, { name := "W-WFSC", address := 527854, grade := "WALL W-WFSC at class EQWF" }], statedConditions := "NONE", letterUnion := "open results it rests on (the Wigner function as the swap-reading cell)", exceedsLetter := true, refereeSixteen := false }

def union_528882_LTGO : ConditionUnion :=
  { address := 528882, stem := "LTGO", members := [{ name := "RDSG-T1", address := 524640, grade := "THM RDSG-T1 CONDITIONAL" }, { name := "W-DDUK", address := 526362, grade := "WALL W-DDUK at class EQKD" }, { name := "W-SRBC", address := 527346, grade := "WALL W-SRBC at class EQSS" }, { name := "W-ODFX", address := 528529, grade := "WALL W-ODFX at class EQOD" }], statedConditions := "NONE", letterUnion := "none beyond the text of record and the proved results it rests on", exceedsLetter := true, refereeSixteen := true }

def union_528961_LHAM : ConditionUnion :=
  { address := 528961, stem := "LHAM", members := [{ name := "W-LLOR", address := 528745, grade := "WALL W-LLOR at class EQLL" }], statedConditions := "NONE", letterUnion := "none beyond the text of record and the proved results it rests on", exceedsLetter := true, refereeSixteen := true }

def union_529015_YOGC : ConditionUnion :=
  { address := 529015, stem := "YOGC", members := [{ name := "MOVE-INVARIANT-CENSUS", address := 510557, grade := "WALL W-IVCS at class CTLS" }, { name := "ENERGY-AS-THE-STEP-GENERATOR", address := 521182, grade := "WALL W-ESGN at class GENZ" }, { name := "W-TEPS", address := 527508, grade := "WALL W-TEPS at class EQSH" }, { name := "W-SGOP", address := 528018, grade := "WALL W-SGOP at class EQSU" }, { name := "W-XOSE", address := 528370, grade := "WALL W-XOSE at class EQEX" }], statedConditions := "THE TEXT OF RECORD", letterUnion := "the text of record; open results it rests on (the exponent spectrum at the first parting link, the step generator as the order operator, the act as the step of the first-power operator); tables of record it rests on (the roster kit)", exceedsLetter := true, refereeSixteen := false }

def union_529072_HGHL : ConditionUnion :=
  { address := 529072, stem := "HGHL", members := [{ name := "HMOA-T1", address := 524905, grade := "THM HMOA-T1 CONDITIONAL" }, { name := "W-HPAQ", address := 526667, grade := "WALL W-HPAQ" }, { name := "W-OFAU", address := 528448, grade := "WALL W-OFAU at class EQOG" }], statedConditions := "NONE", letterUnion := "none beyond the text of record and the proved results it rests on", exceedsLetter := true, refereeSixteen := true }

def union_529099_LSRC : ConditionUnion :=
  { address := 529099, stem := "LSRC", members := [{ name := "RDSG-T1", address := 524640, grade := "THM RDSG-T1 CONDITIONAL" }, { name := "W-PMGH", address := 525807, grade := "WALL W-PMGH at class EQMG" }, { name := "W-VKSD", address := 526234, grade := "WALL W-VKSD" }, { name := "W-ACAL", address := 526287, grade := "WALL W-ACAL" }, { name := "W-FVAC", address := 526387, grade := "WALL W-FVAC" }, { name := "W-CFPK", address := 526437, grade := "WALL W-CFPK" }, { name := "W-HPAQ", address := 526667, grade := "WALL W-HPAQ" }, { name := "W-EALW", address := 526717, grade := "WALL W-EALW at class LETU" }, { name := "W-TWJS", address := 526741, grade := "WALL W-TWJS" }, { name := "W-PTHD", address := 526765, grade := "WALL W-PTHD" }, { name := "W-RIMP", address := 526922, grade := "WALL W-RIMP" }, { name := "W-LNUM", address := 526948, grade := "WALL W-LNUM" }, { name := "OOTR-T1", address := 527022, grade := "THM OOTR-T1 CONDITIONAL" }, { name := "W-OVCM", address := 527537, grade := "WALL W-OVCM at class EQMV" }, { name := "W-GSKC", address := 528258, grade := "WALL W-GSKC at class EQCK" }], statedConditions := "THE PARENTS", letterUnion := "the parents", exceedsLetter := true, refereeSixteen := false }

def union_529240_WPLN : ConditionUnion :=
  { address := 529240, stem := "WPLN", members := [{ name := "LEAN-DERIVATION-FOR-THE-ALPHA-REPLICATION-PACK", address := 527320, grade := "THM DRPN-T1 CONDITIONAL" }, { name := "THE-SUPPORT-RANK-AS-THE-ACT-READOUT-SUM-AT-THE-ONE-LINK", address := 527346, grade := "WALL W-SRBC at class EQSS" }], statedConditions := "NONE", letterUnion := "a conditional theorem at its own statement; open results it rests on (the support rank as the act readout sum at the one link); conditional theorems it rests on (the Lean derivation of the fine-structure result); tables of record it rests on (the replication pack of the fine-structure derivation, the trimmed pack, the one-link decomposition of every board row)", exceedsLetter := false, refereeSixteen := false }

def union_529377_SLL5 : ConditionUnion :=
  { address := 529377, stem := "SLL5", members := [{ name := "LDRQ-T1", address := 524322, grade := "THM LDRQ-T1 CONDITIONAL" }, { name := "SLL4-T1", address := 527615, grade := "THM SLL4-T1 CONDITIONAL" }], statedConditions := "NONE", letterUnion := "a conditional theorem at its own statement", exceedsLetter := true, refereeSixteen := true }

def union_529516_PJFC : ConditionUnion :=
  { address := 529516, stem := "PJFC", members := [{ name := "W-ROED", address := 524800, grade := "WALL W-ROED at class EQRP" }, { name := "W-ACAL", address := 526287, grade := "WALL W-ACAL" }, { name := "W-HPAQ", address := 526667, grade := "WALL W-HPAQ" }, { name := "W-OVCM", address := 527537, grade := "WALL W-OVCM at class EQMV" }, { name := "W-PPHF", address := 527882, grade := "WALL W-PPHF at class EQPP" }, { name := "W-GSKC", address := 528258, grade := "WALL W-GSKC at class EQCK" }], statedConditions := "NONE", letterUnion := "none beyond the text of record and the proved results it rests on", exceedsLetter := true, refereeSixteen := false }

def union_529618_NSKC : ConditionUnion :=
  { address := 529618, stem := "NSKC", members := [{ name := "RDSG-T1", address := 524640, grade := "THM RDSG-T1 CONDITIONAL" }, { name := "W-ROED", address := 524800, grade := "WALL W-ROED at class EQRP" }, { name := "W-NUON", address := 526589, grade := "WALL W-NUON" }, { name := "W-HPAQ", address := 526667, grade := "WALL W-HPAQ" }, { name := "W-CGB2", address := 529319, grade := "WALL W-CGB2 at class EQCZ" }], statedConditions := "THE PARENTS", letterUnion := "the parents", exceedsLetter := true, refereeSixteen := false }

def union_530016_GSTB : ConditionUnion :=
  { address := 530016, stem := "GSTB", members := [], statedConditions := "NONE", letterUnion := "none beyond the text of record and the proved results it rests on", exceedsLetter := false, refereeSixteen := false }

def union_530067_HRCP : ConditionUnion :=
  { address := 530067, stem := "HRCP", members := [{ name := "CARRIER-END-FROM-CPT", address := 517200, grade := "THM CEND-T1 CONDITIONAL" }, { name := "W-CROP", address := 517488, grade := "WALL W-CROP at class PLAC" }, { name := "W-PPHF", address := 527882, grade := "WALL W-PPHF at class EQPP" }, { name := "W-CPH2", address := 529777, grade := "WALL W-CPH2 at class EQDR" }], statedConditions := "THE TEXT OF RECORD", letterUnion := "the text of record; open results it rests on (the carrier phase datum as the hub-pair holonomy, second row, the carrier root from odd cycle parity, pair production as the hub-forming move); conditional theorems it rests on (the carrier end from CPT); tables of record it rests on (the correspondence table, the roster kit)", exceedsLetter := false, refereeSixteen := false }

def union_530196_ERMT : ConditionUnion :=
  { address := 530196, stem := "ERMT", members := [], statedConditions := "NONE", letterUnion := "none beyond the text of record and the proved results it rests on", exceedsLetter := false, refereeSixteen := false }

def union_530247_TOP2 : ConditionUnion :=
  { address := 530247, stem := "TOP2", members := [{ name := "RDSG-T1", address := 524640, grade := "THM RDSG-T1 CONDITIONAL" }, { name := "W-OVCM", address := 527537, grade := "WALL W-OVCM at class EQMV" }, { name := "W-GSKC", address := 528258, grade := "WALL W-GSKC at class EQCK" }, { name := "W-CGB2", address := 529319, grade := "WALL W-CGB2 at class EQCZ" }, { name := "W-TOPS", address := 529726, grade := "WALL W-TOPS at class EQTP" }], statedConditions := "NONE", letterUnion := "none beyond the text of record and the proved results it rests on", exceedsLetter := true, refereeSixteen := false }

def union_530426_UB4H : ConditionUnion :=
  { address := 530426, stem := "UB4H", members := [{ name := "CP-MEASURE-AT-THE-CARRIER-FACE", address := 516700, grade := "THM CPAS-T1 CONDITIONAL" }, { name := "THE-HUB-AS-THE-PAIR-READ-AS-A-QUDIT", address := 526667, grade := "WALL W-HPAQ" }, { name := "THE-CARRIER-PHASE-DATUM-AS-THE-HUB-PAIR-HOLONOMY-ROW-2", address := 529777, grade := "WALL W-CPH2 at class EQDR" }], statedConditions := "NONE", letterUnion := "none beyond the text of record and the proved results it rests on", exceedsLetter := true, refereeSixteen := false }

def union_530477_LWE3 : ConditionUnion :=
  { address := 530477, stem := "LWE3", members := [{ name := "THE-CONTENT-GRADED-CLOSURE-AT-THE-KIT-SITE-MAXIMUM-ROW-2", address := 529319, grade := "WALL W-CGB2 at class EQCZ" }, { name := "THE-LATTICE-AS-THE-PERIODIC-WEB", address := 529699, grade := "WALL W-LTPW at class EQLV" }], statedConditions := "NONE", letterUnion := "none beyond the text of record and the proved results it rests on", exceedsLetter := true, refereeSixteen := false }

def union_530533_ANDB : ConditionUnion :=
  { address := 530533, stem := "ANDB", members := [], statedConditions := "NONE", letterUnion := "none beyond the text of record and the proved results it rests on", exceedsLetter := false, refereeSixteen := false }

def union_530584_ENT2 : ConditionUnion :=
  { address := 530584, stem := "ENT2", members := [{ name := "W-TSTC", address := 525833, grade := "WALL W-TSTC at class EQTS" }, { name := "W-CGB2", address := 529319, grade := "WALL W-CGB2 at class EQCZ" }, { name := "W-GSKP", address := 529671, grade := "WALL W-GSKP at class EQPG" }, { name := "W-TOPS", address := 529726, grade := "WALL W-TOPS at class EQTP" }, { name := "W-NTPE", address := 529990, grade := "WALL W-NTPE at class EQTR" }], statedConditions := "NONE", letterUnion := "none beyond the text of record and the proved results it rests on", exceedsLetter := true, refereeSixteen := false }

def union_530610_PCHS : ConditionUnion :=
  { address := 530610, stem := "PCHS", members := [{ name := "THE-MOVES-OF-RECORD-AS-A-GATE-SET", address := 529911, grade := "WALL W-IRCC at class EQIR" }], statedConditions := "NONE", letterUnion := "none beyond the text of record and the proved results it rests on", exceedsLetter := true, refereeSixteen := false }

def union_530896_UHLF : ConditionUnion :=
  { address := 530896, stem := "UHLF", members := [{ name := "REPRESENTATION-FROM-THE-OPEN-END-CENSUS-ROW-2", address := 524800, grade := "WALL W-ROED at class EQRP" }, { name := "THE-REP-CENSUS-AT-THE-HUB-LEG-READING-ROW-2", address := 530378, grade := "WALL W-RCQ2 at class EQRA" }, { name := "THE-KIT-WEBS-AS-SEEDS-AT-THE-WAVES-BEYOND", address := 530558, grade := "WALL W-SWVK at class EQKW" }, { name := "THE-CARTAN-WEIGHTS-AT-THE-OPEN-ENDS-ROW-3", address := 530636, grade := "WALL W-CWKE at class EQDE" }], statedConditions := "THE PARENTS", letterUnion := "the parents", exceedsLetter := true, refereeSixteen := false }

def union_531081_GPOE : ConditionUnion :=
  { address := 531081, stem := "GPOE", members := [{ name := "W-MXKN", address := 488397, grade := "WALL W-MXKN" }, { name := "W-IVCS", address := 510557, grade := "WALL W-IVCS at class CTLS" }, { name := "RDSG-T1", address := 524640, grade := "THM RDSG-T1 CONDITIONAL" }, { name := "W-SRBC", address := 527346, grade := "WALL W-SRBC at class EQSS" }], statedConditions := "NONE", letterUnion := "none beyond the text of record and the proved results it rests on", exceedsLetter := true, refereeSixteen := true }

def union_531107_FDIS : ConditionUnion :=
  { address := 531107, stem := "FDIS", members := [{ name := "W-DDUK", address := 526362, grade := "WALL W-DDUK at class EQKD" }, { name := "W-SRBC", address := 527346, grade := "WALL W-SRBC at class EQSS" }, { name := "W-MUSP", address := 529407, grade := "WALL W-MUSP at class EQMF" }, { name := "W-SSPW", address := 529856, grade := "WALL W-SSPW at class EQSV" }, { name := "W-MUPH", address := 529937, grade := "WALL W-MUPH at class EQMP" }], statedConditions := "NONE", letterUnion := "none beyond the text of record and the proved results it rests on", exceedsLetter := true, refereeSixteen := true }

def union_531390_LATD : ConditionUnion :=
  { address := 531390, stem := "LATD", members := [], statedConditions := "NONE", letterUnion := "none beyond the text of record and the proved results it rests on", exceedsLetter := false, refereeSixteen := false }

def union_531550_SSDI : ConditionUnion :=
  { address := 531550, stem := "SSDI", members := [{ name := "RAEO-T1", address := 521130, grade := "THM RAEO-T1 CONDITIONAL" }, { name := "ORCG-T1", address := 523802, grade := "THM ORCG-T1 CONDITIONAL" }, { name := "W-PINT", address := 529645, grade := "WALL W-PINT at class EQPI" }], statedConditions := "NONE", letterUnion := "none beyond the text of record and the proved results it rests on", exceedsLetter := true, refereeSixteen := true }

def union_531654_DPIN : ConditionUnion :=
  { address := 531654, stem := "DPIN", members := [{ name := "W-GSKC", address := 528258, grade := "WALL W-GSKC at class EQCK" }, { name := "W-CGB2", address := 529319, grade := "WALL W-CGB2 at class EQCZ" }, { name := "W-ZDPH", address := 529488, grade := "WALL W-ZDPH" }, { name := "W-TOPS", address := 529726, grade := "WALL W-TOPS at class EQTP" }, { name := "W-SSPW", address := 529856, grade := "WALL W-SSPW at class EQSV" }, { name := "W-KSAT", address := 530092, grade := "WALL W-KSAT at class EQKU" }, { name := "W-KSKC", address := 530450, grade := "WALL W-KSKC at class EQDL" }, { name := "W-SSP2", address := 530714, grade := "WALL W-SSP2 at class EQSZ" }], statedConditions := "NONE", letterUnion := "none beyond the text of record and the proved results it rests on", exceedsLetter := true, refereeSixteen := true }

def union_531680_PHTR : ConditionUnion :=
  { address := 531680, stem := "PHTR", members := [{ name := "W-TSTC", address := 525833, grade := "WALL W-TSTC at class EQTS" }, { name := "W-CGB2", address := 529319, grade := "WALL W-CGB2 at class EQCZ" }, { name := "W-TOPS", address := 529726, grade := "WALL W-TOPS at class EQTP" }, { name := "W-SSPW", address := 529856, grade := "WALL W-SSPW at class EQSV" }, { name := "W-KSAT", address := 530092, grade := "WALL W-KSAT at class EQKU" }, { name := "W-SSP2", address := 530714, grade := "WALL W-SSP2 at class EQSZ" }], statedConditions := "NONE", letterUnion := "none beyond the text of record and the proved results it rests on", exceedsLetter := true, refereeSixteen := false }

def union_531706_MUG2 : ConditionUnion :=
  { address := 531706, stem := "MUG2", members := [{ name := "AMSP-T1", address := 523203, grade := "THM AMSP-T1 CONDITIONAL" }], statedConditions := "NONE", letterUnion := "none beyond the text of record and the proved results it rests on", exceedsLetter := true, refereeSixteen := true }

def union_531942_CASM : ConditionUnion :=
  { address := 531942, stem := "CASM", members := [], statedConditions := "NONE", letterUnion := "none beyond the text of record and the proved results it rests on", exceedsLetter := false, refereeSixteen := false }

def union_531968_AMBL : ConditionUnion :=
  { address := 531968, stem := "AMBL", members := [{ name := "RYDBERG-LADDER-FROM-THE-PER-RECORD-READ", address := 520248, grade := "THM RLPQ-T1 CONDITIONAL" }, { name := "ANOMALOUS-[a word of the record list]-AS-THE-SUM-OF-SELF-TERMS-THROUGH-THE-PHOTON", address := 523203, grade := "THM AMSP-T1 CONDITIONAL" }, { name := "W-PRFB", address := 526096, grade := "WALL W-PRFB at class EQPR" }, { name := "W-MJWA", address := 526122, grade := "WALL W-MJWA at class EQAJ" }, { name := "W-USMR", address := 531285, grade := "WALL W-USMR" }], statedConditions := "NONE", letterUnion := "none beyond the text of record and the proved results it rests on", exceedsLetter := true, refereeSixteen := true }

def union_532023_DST2 : ConditionUnion :=
  { address := 532023, stem := "DST2", members := [{ name := "W-TOPS", address := 525833, grade := "WALL W-TSTC at class EQTS" }, { name := "W-KSAT", address := 528258, grade := "WALL W-GSKC at class EQCK" }, { name := "W-TSTC", address := 529319, grade := "WALL W-CGB2 at class EQCZ" }, { name := "W-TOPS", address := 529726, grade := "WALL W-TOPS at class EQTP" }, { name := "W-CGB2", address := 529856, grade := "WALL W-SSPW at class EQSV" }, { name := "W-SSP2", address := 530092, grade := "WALL W-KSAT at class EQKU" }, { name := "W-SSPW", address := 530714, grade := "WALL W-SSP2 at class EQSZ" }], statedConditions := "NONE", letterUnion := "none beyond the text of record and the proved results it rests on", exceedsLetter := true, refereeSixteen := false }

def union_532049_DIM1 : ConditionUnion :=
  { address := 532049, stem := "DIM1", members := [{ name := "W-CSPN", address := 517615, grade := "WALL W-CSPN at class COMN" }, { name := "W-ACAL", address := 526287, grade := "WALL W-ACAL" }, { name := "W-KSAT", address := 530092, grade := "WALL W-KSAT at class EQKU" }, { name := "W-SSP2", address := 530714, grade := "WALL W-SSP2 at class EQSZ" }], statedConditions := "THE WORD MAXIMALLY ENTANGLED READ", letterUnion := "the word maximally entangled read", exceedsLetter := true, refereeSixteen := true }

def union_532075_LGDS : ConditionUnion :=
  { address := 532075, stem := "LGDS", members := [{ name := "W-HPAQ", address := 526667, grade := "WALL W-HPAQ" }, { name := "W-TSQA", address := 527804, grade := "WALL W-TSQA" }, { name := "W-PSCN", address := 529460, grade := "WALL W-PSCN at class EQPD" }, { name := "W-SSPW", address := 529856, grade := "WALL W-SSPW at class EQSV" }, { name := "W-MUPH", address := 529937, grade := "WALL W-MUPH at class EQMP" }, { name := "W-KSAT", address := 530092, grade := "WALL W-KSAT at class EQKU" }, { name := "W-SSP2", address := 530714, grade := "WALL W-SSP2 at class EQSZ" }, { name := "W-FPWP", address := 530941, grade := "WALL W-FPWP at class EQPF" }, { name := "W-OLLK", address := 531338, grade := "WALL W-OLLK at class EQOO" }, { name := "W-EXMH", address := 531602, grade := "WALL W-EXMH at class EQEY" }], statedConditions := "NONE", letterUnion := "none beyond the text of record and the proved results it rests on", exceedsLetter := true, refereeSixteen := true }

def union_532153_ENBG : ConditionUnion :=
  { address := 532153, stem := "ENBG", members := [{ name := "DARK-CORE-ANATOMY", address := 487975, grade := "WALL W-DKCA" }, { name := "W-LCOH", address := 525041, grade := "WALL W-LCOH at class EQLG" }, { name := "W-VKSD", address := 526234, grade := "WALL W-VKSD" }, { name := "W-HPAQ", address := 526667, grade := "WALL W-HPAQ" }, { name := "W-HPTW", address := 528799, grade := "WALL W-HPTW at class EQHR" }, { name := "W-PSCN", address := 529460, grade := "WALL W-PSCN at class EQPD" }, { name := "W-ENLG", address := 529542, grade := "WALL W-ENLG at class EQLO" }, { name := "W-SSPW", address := 529856, grade := "WALL W-SSPW at class EQSV" }, { name := "W-KSAT", address := 530092, grade := "WALL W-KSAT at class EQKU" }, { name := "W-SSP2", address := 530714, grade := "WALL W-SSP2 at class EQSZ" }, { name := "W-ISMS", address := 530796, grade := "WALL W-ISMS at class EQIT" }, { name := "W-OLLK", address := 531338, grade := "WALL W-OLLK at class EQOO" }], statedConditions := "NONE", letterUnion := "none beyond the text of record and the proved results it rests on", exceedsLetter := true, refereeSixteen := true }

def union_532262_STZC : ConditionUnion :=
  { address := 532262, stem := "STZC", members := [{ name := "W-DSDM", address := 525937, grade := "WALL W-DSDM at class EQDN" }, { name := "W-PRFB", address := 526096, grade := "WALL W-PRFB at class EQPR" }, { name := "W-SSPW", address := 529856, grade := "WALL W-SSPW at class EQSV" }, { name := "W-SSP2", address := 530714, grade := "WALL W-SSP2 at class EQSZ" }, { name := "W-FPWP", address := 530941, grade := "WALL W-FPWP at class EQPF" }, { name := "W-SCTJ", address := 531576, grade := "WALL W-SCTJ at class EQTJ" }, { name := "W-GENJ", address := 531628, grade := "WALL W-GENJ at class EQGN" }], statedConditions := "NONE", letterUnion := "none beyond the text of record and the proved results it rests on", exceedsLetter := true, refereeSixteen := true }

def union_532499_HPK2 : ConditionUnion :=
  { address := 532499, stem := "HPK2", members := [{ name := "W-NCC3", address := 517351, grade := "WALL at class CTSL" }, { name := "W-PMGH", address := 525807, grade := "WALL W-PMGH at class EQMG" }, { name := "W-ACAL", address := 526287, grade := "WALL W-ACAL" }, { name := "W-HPAQ", address := 526667, grade := "WALL W-HPAQ" }, { name := "W-PPHF", address := 527882, grade := "WALL W-PPHF at class EQPP" }, { name := "W-GSKP", address := 529671, grade := "WALL W-GSKP at class EQPG" }, { name := "W-IRCC", address := 529911, grade := "WALL W-IRCC at class EQIR" }, { name := "W-KSAT", address := 530092, grade := "WALL W-KSAT at class EQKU" }, { name := "W-SSP2", address := 530714, grade := "WALL W-SSP2 at class EQSZ" }], statedConditions := "NONE", letterUnion := "none beyond the text of record and the proved results it rests on", exceedsLetter := true, refereeSixteen := true }

def union_532576_LDR5 : ConditionUnion :=
  { address := 532576, stem := "LDR5", members := [{ name := "LEAN-DERIVATION-FOR-THE-ALPHA-REPLICATION-PACK", address := 527320, grade := "THM DRPN-T1 CONDITIONAL" }, { name := "WPLN-T1", address := 529240, grade := "THM WPLN-T1 CONDITIONAL" }], statedConditions := "NONE", letterUnion := "a conditional theorem at its own statement; conditional theorems it rests on (the Lean derivation of the fine-structure result, the one-link value theorem with the word as a parameter); tables of record it rests on (the fine-structure Letter)", exceedsLetter := false, refereeSixteen := false }

def union_532628 : ConditionUnion :=
  { address := 532628, stem := "NKS2", members := [], statedConditions := "NONE", letterUnion := "the status the letter carries is the status of record", exceedsLetter := false, refereeSixteen := false }

def union_532679_NOSG : ConditionUnion :=
  { address := 532679, stem := "NOSG", members := [], statedConditions := "THE TEXT OF RECORD", letterUnion := "the text of record", exceedsLetter := false, refereeSixteen := false }

def unionsV95 : List ConditionUnion := [union_528421_TISK, union_528475_DURA, union_528690_VOFW, union_528772_QEHL, union_528827_XSSF, union_528854_FFNW, union_528882_LTGO, union_528961_LHAM, union_529015_YOGC, union_529072_HGHL, union_529099_LSRC, union_529240_WPLN, union_529377_SLL5, union_529516_PJFC, union_529618_NSKC, union_530016_GSTB, union_530067_HRCP, union_530196_ERMT, union_530247_TOP2, union_530426_UB4H, union_530477_LWE3, union_530533_ANDB, union_530584_ENT2, union_530610_PCHS, union_530896_UHLF, union_531081_GPOE, union_531107_FDIS, union_531390_LATD, union_531550_SSDI, union_531654_DPIN, union_531680_PHTR, union_531706_MUG2, union_531942_CASM, union_531968_AMBL, union_532023_DST2, union_532049_DIM1, union_532075_LGDS, union_532153_ENBG, union_532262_STZC, union_532499_HPK2, union_532576_LDR5, union_532628, union_532679_NOSG]

def membersAhead : Bool := unionsV95.all fun u => u.members.all fun m => decide (m.address < u.address)

theorem unions_census_v95 : unionsV95.length = 43 /\ (unionsV95.filter (fun u => u.exceedsLetter)).length = 31 /\ (unionsV95.filter (fun u => u.refereeSixteen)).length = 16 /\ (unionsV95.filter (fun u => u.refereeSixteen && !u.exceedsLetter)).length = 0 /\ (unionsV95.map (fun u => u.members.length)).foldl (fun x y => x + y) 0 = 178 /\ membersAhead = true := by decide

end ChainTheory.ConditionUnions
