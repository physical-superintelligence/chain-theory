set_option maxRecDepth 100000

namespace ChainTheory.Data.D525963_SWNR

structure Row where
  multiplicity : String
  of_record : String
  T1_face : String
  T1_parting : String
  T2_face : String
  T2_outcome : String
  T2_parting : String
deriving Repr

def rows : List Row := [
  { multiplicity := "SIMPLE", of_record := "YES", T1_face := "A", T1_parting := "NONE", T2_face := "A", T2_outcome := "UNBOUNDED-TO-THE-BOUND-8", T2_parting := "NONE" },
  { multiplicity := "MULTI", of_record := "NO", T1_face := "B", T1_parting := "the sinks beyond the record MULTI:PP:0; the record webs absent from the sinks NONE; the alpha unique YES", T2_face := "A", T2_outcome := "UNBOUNDED-TO-THE-BOUND-8", T2_parting := "NONE" }
]

theorem check_1 : rows.length = 2 := by decide

theorem check_2 : (rows.filter (fun r => r.of_record == "YES" && r.T1_face == "A")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.of_record == "YES" && r.T2_face == "A")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.of_record == "YES" && r.T1_parting == "NONE")).length = 1 := by decide

theorem checks :
    (rows.length = 2) /\
    ((rows.filter (fun r => r.of_record == "YES" && r.T1_face == "A")).length = 1) /\
    ((rows.filter (fun r => r.of_record == "YES" && r.T2_face == "A")).length = 1) /\
    ((rows.filter (fun r => r.of_record == "YES" && r.T1_parting == "NONE")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (check_4)))

end ChainTheory.Data.D525963_SWNR
