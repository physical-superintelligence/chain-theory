set_option maxRecDepth 100000

namespace ChainTheory.Data.D524826_DHLP

structure Row where
  id : String
  measure : Int
  docks : String
  rank : Int
  rank_record : Int
  rank_eq_record : String
  rank_orcb_sum : Int
  rank_eq_orcb : String
  docks_eq_orcb : String
  orcb_cells : String
  hubs_record : String
  hubs_kit : String
  hubs_eq : String
  in_legs : String
  in_legs_eq_hdie : String
  in_incidences : Int
  in_distinct : Int
  leg_product : Int
  hub_product : Int
  all_product : Int
  dressing_record : Int
  dressing_hdie_eq : String
  leg_eq_dressing : String
  hub_eq_dressing : String
  all_eq_dressing : String
  S_record : Int
  S_record_eq_rank_dressing : String
  leg_S : Int
  leg_S_eq_record : String
  hub_S : Int
  all_S : Int
  kit_measure_line : Int
  kit_genres_eq : String
deriving Repr

def rows : List Row := [
  { id := "E_TWODOCK", measure := 79, docks := "L9;L10", rank := 67, rank_record := 67, rank_eq_record := "YES", rank_orcb_sum := 67, rank_eq_orcb := "YES", docks_eq_orcb := "YES", orcb_cells := "YES;YES", hubs_record := "H", hubs_kit := "H", hubs_eq := "YES", in_legs := "L4:H-A:(3,4):3", in_legs_eq_hdie := "YES", in_incidences := 1, in_distinct := 1, leg_product := 3, hub_product := 3, all_product := 24, dressing_record := 3, dressing_hdie_eq := "YES", leg_eq_dressing := "YES", hub_eq_dressing := "YES", all_eq_dressing := "NO", S_record := 201, S_record_eq_rank_dressing := "YES", leg_S := 201, leg_S_eq_record := "YES", hub_S := 201, all_S := 1608, kit_measure_line := 79, kit_genres_eq := "10 of 10" },
  { id := "T6-MU-LEAF", measure := 117, docks := "L14;L15", rank := 107, rank_record := 107, rank_eq_record := "YES", rank_orcb_sum := 107, rank_eq_orcb := "YES", docks_eq_orcb := "YES", orcb_cells := "YES;YES", hubs_record := "H;H2", hubs_kit := "H;H2", hubs_eq := "YES", in_legs := "L4:H-A:(3,4):3;L9:H2-B:(3,4):3", in_legs_eq_hdie := "YES", in_incidences := 2, in_distinct := 2, leg_product := 9, hub_product := 9, all_product := 576, dressing_record := 9, dressing_hdie_eq := "YES", leg_eq_dressing := "YES", hub_eq_dressing := "YES", all_eq_dressing := "NO", S_record := 963, S_record_eq_rank_dressing := "YES", leg_S := 963, leg_S_eq_record := "YES", hub_S := 963, all_S := 61632, kit_measure_line := 117, kit_genres_eq := "15 of 15" },
  { id := "T6-TAU-LL", measure := 155, docks := "L19;L20", rank := 147, rank_record := 147, rank_eq_record := "YES", rank_orcb_sum := 147, rank_eq_orcb := "YES", docks_eq_orcb := "YES", orcb_cells := "YES;YES", hubs_record := "H;H2;H3", hubs_kit := "H;H2;H3", hubs_eq := "YES", in_legs := "L4:H-A:(3,4):3;L9:H2-B:(3,4):3;L14:H3-C:(3,4):3", in_legs_eq_hdie := "YES", in_incidences := 3, in_distinct := 3, leg_product := 27, hub_product := 27, all_product := 13824, dressing_record := 27, dressing_hdie_eq := "YES", leg_eq_dressing := "YES", hub_eq_dressing := "YES", all_eq_dressing := "NO", S_record := 3969, S_record_eq_rank_dressing := "YES", leg_S := 3969, leg_S_eq_record := "YES", hub_S := 3969, all_S := 2032128, kit_measure_line := 155, kit_genres_eq := "20 of 20" },
  { id := "U_DOCKED", measure := 12, docks := "L2", rank := 6, rank_record := 6, rank_eq_record := "YES", rank_orcb_sum := 6, rank_eq_orcb := "YES", docks_eq_orcb := "YES", orcb_cells := "YES;YES", hubs_record := "NONE", hubs_kit := "NONE", hubs_eq := "YES", in_legs := "NONE", in_legs_eq_hdie := "YES", in_incidences := 0, in_distinct := 0, leg_product := 1, hub_product := 1, all_product := 1, dressing_record := 1, dressing_hdie_eq := "YES", leg_eq_dressing := "YES", hub_eq_dressing := "YES", all_eq_dressing := "YES", S_record := 6, S_record_eq_rank_dressing := "YES", leg_S := 6, leg_S_eq_record := "YES", hub_S := 6, all_S := 6, kit_measure_line := 12, kit_genres_eq := "2 of 2" },
  { id := "C_DOCKED", measure := 46, docks := "L6", rank := 40, rank_record := 40, rank_eq_record := "YES", rank_orcb_sum := 40, rank_eq_orcb := "YES", docks_eq_orcb := "YES", orcb_cells := "YES;YES", hubs_record := "H", hubs_kit := "H", hubs_eq := "YES", in_legs := "L1:Q-H:(3,4):3", in_legs_eq_hdie := "YES", in_incidences := 1, in_distinct := 1, leg_product := 3, hub_product := 3, all_product := 24, dressing_record := 3, dressing_hdie_eq := "YES", leg_eq_dressing := "YES", hub_eq_dressing := "YES", all_eq_dressing := "NO", S_record := 120, S_record_eq_rank_dressing := "YES", leg_S := 120, leg_S_eq_record := "YES", hub_S := 120, all_S := 960, kit_measure_line := 46, kit_genres_eq := "6 of 6" },
  { id := "TA_DOCKED", measure := 82, docks := "L10", rank := 76, rank_record := 76, rank_eq_record := "YES", rank_orcb_sum := 76, rank_eq_orcb := "YES", docks_eq_orcb := "YES", orcb_cells := "YES;YES", hubs_record := "H;H2", hubs_kit := "H;H2", hubs_eq := "YES", in_legs := "L1:Q-H:(3,4):3;L5:H-H2:(4,4):4", in_legs_eq_hdie := "YES", in_incidences := 3, in_distinct := 2, leg_product := 12, hub_product := 48, all_product := 384, dressing_record := 12, dressing_hdie_eq := "YES", leg_eq_dressing := "YES", hub_eq_dressing := "NO", all_eq_dressing := "NO", S_record := 912, S_record_eq_rank_dressing := "YES", leg_S := 912, leg_S_eq_record := "YES", hub_S := 3648, all_S := 29184, kit_measure_line := 82, kit_genres_eq := "10 of 10" },
  { id := "D_DOCKED", measure := 52, docks := "L7", rank := 46, rank_record := 46, rank_eq_record := "YES", rank_orcb_sum := 46, rank_eq_orcb := "YES", docks_eq_orcb := "YES", orcb_cells := "YES;YES", hubs_record := "F", hubs_kit := "F", hubs_eq := "YES", in_legs := "L2:Q-F:(3,4):3", in_legs_eq_hdie := "YES", in_incidences := 1, in_distinct := 1, leg_product := 3, hub_product := 3, all_product := 24, dressing_record := 3, dressing_hdie_eq := "YES", leg_eq_dressing := "YES", hub_eq_dressing := "YES", all_eq_dressing := "NO", S_record := 138, S_record_eq_rank_dressing := "YES", leg_S := 138, leg_S_eq_record := "YES", hub_S := 138, all_S := 1104, kit_measure_line := 52, kit_genres_eq := "7 of 7" },
  { id := "S_DOCKED", measure := 86, docks := "L11", rank := 80, rank_record := 80, rank_eq_record := "YES", rank_orcb_sum := 80, rank_eq_orcb := "YES", docks_eq_orcb := "YES", orcb_cells := "YES;YES", hubs_record := "F;G", hubs_kit := "F;G", hubs_eq := "YES", in_legs := "L1:Q-F:(3,4):3;L6:Q-G:(3,4):3", in_legs_eq_hdie := "YES", in_incidences := 2, in_distinct := 2, leg_product := 9, hub_product := 9, all_product := 576, dressing_record := 9, dressing_hdie_eq := "YES", leg_eq_dressing := "YES", hub_eq_dressing := "YES", all_eq_dressing := "NO", S_record := 720, S_record_eq_rank_dressing := "YES", leg_S := 720, leg_S_eq_record := "YES", hub_S := 720, all_S := 46080, kit_measure_line := 86, kit_genres_eq := "11 of 11" },
  { id := "BA_DOCKED", measure := 122, docks := "L15", rank := 116, rank_record := 116, rank_eq_record := "YES", rank_orcb_sum := 116, rank_eq_orcb := "YES", docks_eq_orcb := "YES", orcb_cells := "YES;YES", hubs_record := "F;G;G2", hubs_kit := "F;G;G2", hubs_eq := "YES", in_legs := "L1:Q-F:(3,4):3;L6:Q-G:(3,4):3;L10:G-G2:(4,4):4", in_legs_eq_hdie := "YES", in_incidences := 4, in_distinct := 3, leg_product := 36, hub_product := 144, all_product := 9216, dressing_record := 36, dressing_hdie_eq := "YES", leg_eq_dressing := "YES", hub_eq_dressing := "NO", all_eq_dressing := "NO", S_record := 4176, S_record_eq_rank_dressing := "YES", leg_S := 4176, leg_S_eq_record := "YES", hub_S := 16704, all_S := 1069056, kit_measure_line := 122, kit_genres_eq := "15 of 15" },
  { id := "r-WPM", measure := 28, docks := "NONE", rank := 28, rank_record := 28, rank_eq_record := "YES", rank_orcb_sum := 28, rank_eq_orcb := "YES", docks_eq_orcb := "YES", orcb_cells := "YES;YES", hubs_record := "NONE", hubs_kit := "NONE", hubs_eq := "YES", in_legs := "NONE", in_legs_eq_hdie := "YES", in_incidences := 0, in_distinct := 0, leg_product := 1, hub_product := 1, all_product := 1, dressing_record := 1, dressing_hdie_eq := "YES", leg_eq_dressing := "YES", hub_eq_dressing := "YES", all_eq_dressing := "YES", S_record := 28, S_record_eq_rank_dressing := "YES", leg_S := 28, leg_S_eq_record := "YES", hub_S := 28, all_S := 28, kit_measure_line := 28, kit_genres_eq := "4 of 4" },
  { id := "r-Z0D", measure := 28, docks := "NONE", rank := 28, rank_record := 28, rank_eq_record := "YES", rank_orcb_sum := 28, rank_eq_orcb := "YES", docks_eq_orcb := "YES", orcb_cells := "YES;YES", hubs_record := "NONE", hubs_kit := "NONE", hubs_eq := "YES", in_legs := "NONE", in_legs_eq_hdie := "YES", in_incidences := 0, in_distinct := 0, leg_product := 1, hub_product := 1, all_product := 1, dressing_record := 1, dressing_hdie_eq := "YES", leg_eq_dressing := "YES", hub_eq_dressing := "YES", all_eq_dressing := "YES", S_record := 28, S_record_eq_rank_dressing := "YES", leg_S := 28, leg_S_eq_record := "YES", hub_S := 28, all_S := 28, kit_measure_line := 28, kit_genres_eq := "4 of 4" },
  { id := "r-HIG", measure := 16, docks := "NONE", rank := 16, rank_record := 16, rank_eq_record := "YES", rank_orcb_sum := 16, rank_eq_orcb := "YES", docks_eq_orcb := "YES", orcb_cells := "YES;YES", hubs_record := "NONE", hubs_kit := "NONE", hubs_eq := "YES", in_legs := "NONE", in_legs_eq_hdie := "YES", in_incidences := 0, in_distinct := 0, leg_product := 1, hub_product := 1, all_product := 1, dressing_record := 1, dressing_hdie_eq := "YES", leg_eq_dressing := "YES", hub_eq_dressing := "YES", all_eq_dressing := "YES", S_record := 16, S_record_eq_rank_dressing := "YES", leg_S := 16, leg_S_eq_record := "YES", hub_S := 16, all_S := 16, kit_measure_line := 16, kit_genres_eq := "1 of 1" },
  { id := "r-GLU", measure := 27, docks := "NONE", rank := 27, rank_record := 27, rank_eq_record := "YES", rank_orcb_sum := 27, rank_eq_orcb := "YES", docks_eq_orcb := "YES", orcb_cells := "YES;YES", hubs_record := "NONE", hubs_kit := "NONE", hubs_eq := "YES", in_legs := "NONE", in_legs_eq_hdie := "YES", in_incidences := 0, in_distinct := 0, leg_product := 1, hub_product := 1, all_product := 1, dressing_record := 1, dressing_hdie_eq := "YES", leg_eq_dressing := "YES", hub_eq_dressing := "YES", all_eq_dressing := "YES", S_record := 27, S_record_eq_rank_dressing := "YES", leg_S := 27, leg_S_eq_record := "YES", hub_S := 27, all_S := 27, kit_measure_line := 27, kit_genres_eq := "3 of 3" }
]

theorem check_1 : rows.length = 13 := by decide

theorem check_2 : rows.all (fun r => r.leg_product == r.dressing_record) = true := by decide

theorem check_3 : rows.all (fun r => r.rank == r.rank_record) = true := by decide

theorem check_4 : rows.all (fun r => r.rank * r.dressing_record == r.S_record) = true := by decide

theorem check_5 : (rows.filter (fun r => r.leg_eq_dressing == "YES")).length = 13 := by decide

theorem checks :
    (rows.length = 13) /\
    (rows.all (fun r => r.leg_product == r.dressing_record) = true) /\
    (rows.all (fun r => r.rank == r.rank_record) = true) /\
    (rows.all (fun r => r.rank * r.dressing_record == r.S_record) = true) /\
    ((rows.filter (fun r => r.leg_eq_dressing == "YES")).length = 13) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (check_5))))

end ChainTheory.Data.D524826_DHLP
