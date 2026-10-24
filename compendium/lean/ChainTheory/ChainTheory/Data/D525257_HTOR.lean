set_option maxRecDepth 100000

namespace ChainTheory.Data.D525257_HTOR

structure Row where
  reading : String
  cap_read : String
  far_washed : String
  fixed_set : String
  fixed_count : Int
  unfixed_count : Int
  selected_direction : String
  along_dim : String
  transverse_dim : String
  W1_open_traceless : Int
  W2_full_triple : Int
  W3_kept_by_average : Int
  transverse_eq_open : String
deriving Repr

def rows : List Row := [
  { reading := "OPEN-READ-OF-RECORD", cap_read := "Z", far_washed := "YES", fixed_set := "Z", fixed_count := 1, unfixed_count := 2, selected_direction := "Z", along_dim := "1", transverse_dim := "2", W1_open_traceless := 2, W2_full_triple := 3, W3_kept_by_average := 1, transverse_eq_open := "YES" },
  { reading := "OPEN-READ-OF-RECORD", cap_read := "X", far_washed := "NO", fixed_set := "NONE", fixed_count := 0, unfixed_count := 3, selected_direction := "NONE", along_dim := "NONE", transverse_dim := "NONE", W1_open_traceless := 3, W2_full_triple := 3, W3_kept_by_average := 0, transverse_eq_open := "NA" },
  { reading := "OPEN-READ-OF-RECORD", cap_read := "XZ", far_washed := "NO", fixed_set := "NONE", fixed_count := 0, unfixed_count := 3, selected_direction := "NONE", along_dim := "NONE", transverse_dim := "NONE", W1_open_traceless := 3, W2_full_triple := 3, W3_kept_by_average := 0, transverse_eq_open := "NA" },
  { reading := "OPEN-READ-OF-RECORD", cap_read := "XZ2", far_washed := "NO", fixed_set := "NONE", fixed_count := 0, unfixed_count := 3, selected_direction := "NONE", along_dim := "NONE", transverse_dim := "NONE", W1_open_traceless := 3, W2_full_triple := 3, W3_kept_by_average := 0, transverse_eq_open := "NA" },
  { reading := "DOCK-SUPPORT-TRIPLE", cap_read := "Z", far_washed := "YES", fixed_set := "Z", fixed_count := 1, unfixed_count := 2, selected_direction := "Z", along_dim := "1", transverse_dim := "2", W1_open_traceless := 2, W2_full_triple := 3, W3_kept_by_average := 1, transverse_eq_open := "YES" },
  { reading := "DOCK-SUPPORT-TRIPLE", cap_read := "X", far_washed := "YES", fixed_set := "X", fixed_count := 1, unfixed_count := 2, selected_direction := "X", along_dim := "1", transverse_dim := "2", W1_open_traceless := 2, W2_full_triple := 3, W3_kept_by_average := 1, transverse_eq_open := "YES" },
  { reading := "DOCK-SUPPORT-TRIPLE", cap_read := "XZ", far_washed := "YES", fixed_set := "Y", fixed_count := 1, unfixed_count := 2, selected_direction := "Y", along_dim := "1", transverse_dim := "2", W1_open_traceless := 2, W2_full_triple := 3, W3_kept_by_average := 1, transverse_eq_open := "YES" },
  { reading := "DOCK-WHOLE-LETTER-SET", cap_read := "Z", far_washed := "YES", fixed_set := "X0Z1 X0Z2", fixed_count := 2, unfixed_count := 6, selected_direction := "Z", along_dim := "1", transverse_dim := "2", W1_open_traceless := 6, W2_full_triple := 8, W3_kept_by_average := 2, transverse_eq_open := "NO" },
  { reading := "DOCK-WHOLE-LETTER-SET", cap_read := "X", far_washed := "YES", fixed_set := "NONE", fixed_count := 0, unfixed_count := 8, selected_direction := "X", along_dim := "1", transverse_dim := "2", W1_open_traceless := 8, W2_full_triple := 8, W3_kept_by_average := 0, transverse_eq_open := "NO" },
  { reading := "DOCK-WHOLE-LETTER-SET", cap_read := "XZ", far_washed := "YES", fixed_set := "NONE", fixed_count := 0, unfixed_count := 8, selected_direction := "Y", along_dim := "1", transverse_dim := "2", W1_open_traceless := 8, W2_full_triple := 8, W3_kept_by_average := 0, transverse_eq_open := "NO" }
]

theorem check_1 : rows.length = 10 := by decide

theorem check_2 : (rows.filter (fun r => r.reading == "OPEN-READ-OF-RECORD" && r.cap_read == "Z" && r.transverse_dim == "2")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.reading == "OPEN-READ-OF-RECORD" && r.far_washed == "YES")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.reading == "OPEN-READ-OF-RECORD" && r.far_washed == "NO")).length = 3 := by decide

theorem checks :
    (rows.length = 10) /\
    ((rows.filter (fun r => r.reading == "OPEN-READ-OF-RECORD" && r.cap_read == "Z" && r.transverse_dim == "2")).length = 1) /\
    ((rows.filter (fun r => r.reading == "OPEN-READ-OF-RECORD" && r.far_washed == "YES")).length = 1) /\
    ((rows.filter (fun r => r.reading == "OPEN-READ-OF-RECORD" && r.far_washed == "NO")).length = 3) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (check_4)))

end ChainTheory.Data.D525257_HTOR
