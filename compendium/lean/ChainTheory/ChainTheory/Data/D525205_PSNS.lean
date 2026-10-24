set_option maxRecDepth 100000

namespace ChainTheory.Data.D525205_PSNS

structure Row where
  reading : String
  of_record : String
  face : String
  junction_far_class_P : String
  junction_far_class_N : String
  R1 : String
  R2 : String
  R3 : String
  pairable_set : String
  K4 : String
deriving Repr

def rows : List Row := [
  { reading := "T.JT.DOCK", of_record := "YES", face := "B", junction_far_class_P := "CLOSED", junction_far_class_N := "CLOSED", R1 := "P:2;N:1", R2 := "P:0;N:0", R3 := "P:0;N:0", pairable_set := "P:2;N:1", K4 := "EXCLUDED" },
  { reading := "T.JK.DOCK", of_record := "NO", face := "B", junction_far_class_P := "CLOSED", junction_far_class_N := "CLOSED", R1 := "P:2;N:1", R2 := "P:0;N:0", R3 := "P:0;N:0", pairable_set := "-", K4 := "-" },
  { reading := "T.JK.MOUTH", of_record := "NO", face := "B", junction_far_class_P := "CLOSED", junction_far_class_N := "CLOSED", R1 := "P:2;N:1", R2 := "P:0;N:0", R3 := "P:0;N:0", pairable_set := "-", K4 := "-" },
  { reading := "T.JT.MOUTH", of_record := "NO", face := "B", junction_far_class_P := "CLOSED", junction_far_class_N := "CLOSED", R1 := "P:2;N:1", R2 := "P:0;N:0", R3 := "P:0;N:0", pairable_set := "-", K4 := "-" },
  { reading := "TB.JK.DOCK", of_record := "NO", face := "B", junction_far_class_P := "CLOSED", junction_far_class_N := "CLOSED", R1 := "P:2;N:1", R2 := "P:0;N:0", R3 := "P:0;N:0", pairable_set := "-", K4 := "-" },
  { reading := "TB.JK.MOUTH", of_record := "NO", face := "B", junction_far_class_P := "CLOSED", junction_far_class_N := "CLOSED", R1 := "P:2;N:1", R2 := "P:0;N:0", R3 := "P:0;N:0", pairable_set := "-", K4 := "-" },
  { reading := "TB.JT.DOCK", of_record := "NO", face := "B", junction_far_class_P := "CLOSED", junction_far_class_N := "CLOSED", R1 := "P:2;N:1", R2 := "P:0;N:0", R3 := "P:0;N:0", pairable_set := "-", K4 := "-" },
  { reading := "TB.JT.MOUTH", of_record := "NO", face := "B", junction_far_class_P := "CLOSED", junction_far_class_N := "CLOSED", R1 := "P:2;N:1", R2 := "P:0;N:0", R3 := "P:0;N:0", pairable_set := "-", K4 := "-" }
]

theorem check_1 : rows.length = 8 := by decide

theorem check_2 : (rows.filter (fun r => r.face == "B")).length = 8 := by decide

theorem check_3 : (rows.filter (fun r => r.of_record == "YES" && r.K4 == "EXCLUDED")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.of_record == "YES")).length = 1 := by decide

theorem checks :
    (rows.length = 8) /\
    ((rows.filter (fun r => r.face == "B")).length = 8) /\
    ((rows.filter (fun r => r.of_record == "YES" && r.K4 == "EXCLUDED")).length = 1) /\
    ((rows.filter (fun r => r.of_record == "YES")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (check_4)))

end ChainTheory.Data.D525205_PSNS
