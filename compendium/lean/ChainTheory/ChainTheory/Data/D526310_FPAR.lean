set_option maxRecDepth 100000

namespace ChainTheory.Data.D526310_FPAR

structure Row where
  web : String
  links : Int
  unstruck : Int
  struck : String
  measure : Int
  rank : Int
  rank_resum : Int
  rank_eq : String
  dressing : Int
  product : Int
  product_spelling : String
  S1_readout_sum : Int
  S1_4728 : Int
  S1_eq_4728 : String
  act1_eq : String
  S1_eq_product : String
  S1_4728_eq_product : String
  S1_minus_product : Int
  difference_type : String
  census_integers : String
  S1_cut : Int
  S1_cut_eq_rank : String
  one_exchange_census : Int
  pairs_count : Int
  pairs_count_eq_census_sq : String
  slot_weighted_sum : Int
deriving Repr

def rows : List Row := [
  { web := "E_TWODOCK", links := 10, unstruck := 8, struck := "L9;L10", measure := 79, rank := 67, rank_resum := 67, rank_eq := "YES", dressing := 3, product := 201, product_spelling := "67 x 3", S1_readout_sum := 201, S1_4728 := 201, S1_eq_4728 := "YES", act1_eq := "8 of 8", S1_eq_product := "YES", S1_4728_eq_product := "YES", S1_minus_product := 0, difference_type := "ZERO", census_integers := "YES", S1_cut := 67, S1_cut_eq_rank := "YES", one_exchange_census := 1674, pairs_count := 2802276, pairs_count_eq_census_sq := "YES", slot_weighted_sum := 46368 },
  { web := "T6-MU-LEAF", links := 15, unstruck := 13, struck := "L14;L15", measure := 117, rank := 107, rank_resum := 107, rank_eq := "YES", dressing := 9, product := 963, product_spelling := "107 x 9", S1_readout_sum := 963, S1_4728 := 963, S1_eq_4728 := "YES", act1_eq := "13 of 13", S1_eq_product := "YES", S1_4728_eq_product := "YES", S1_minus_product := 0, difference_type := "ZERO", census_integers := "YES", S1_cut := 107, S1_cut_eq_rank := "YES", one_exchange_census := 2748, pairs_count := 7551504, pairs_count_eq_census_sq := "YES", slot_weighted_sum := 229608 },
  { web := "T6-TAU-LL", links := 20, unstruck := 18, struck := "L19;L20", measure := 155, rank := 147, rank_resum := 147, rank_eq := "YES", dressing := 27, product := 3969, product_spelling := "147 x 27", S1_readout_sum := 3969, S1_4728 := 3969, S1_eq_4728 := "YES", act1_eq := "18 of 18", S1_eq_product := "YES", S1_4728_eq_product := "YES", S1_minus_product := 0, difference_type := "ZERO", census_integers := "YES", S1_cut := 147, S1_cut_eq_rank := "YES", one_exchange_census := 3822, pairs_count := 14607684, pairs_count_eq_census_sq := "YES", slot_weighted_sum := 960336 },
  { web := "U_DOCKED", links := 2, unstruck := 1, struck := "L2", measure := 12, rank := 6, rank_resum := 6, rank_eq := "YES", dressing := 1, product := 6, product_spelling := "6 x 1", S1_readout_sum := 6, S1_4728 := 6, S1_eq_4728 := "YES", act1_eq := "1 of 1", S1_eq_product := "YES", S1_4728_eq_product := "YES", S1_minus_product := 0, difference_type := "ZERO", census_integers := "YES", S1_cut := 6, S1_cut_eq_rank := "YES", one_exchange_census := 90, pairs_count := 8100, pairs_count_eq_census_sq := "YES", slot_weighted_sum := 540 },
  { web := "C_DOCKED", links := 6, unstruck := 5, struck := "L6", measure := 46, rank := 40, rank_resum := 40, rank_eq := "YES", dressing := 3, product := 120, product_spelling := "40 x 3", S1_readout_sum := 120, S1_4728 := 120, S1_eq_4728 := "YES", act1_eq := "5 of 5", S1_eq_product := "YES", S1_4728_eq_product := "YES", S1_minus_product := 0, difference_type := "ZERO", census_integers := "YES", S1_cut := 40, S1_cut_eq_rank := "YES", one_exchange_census := 1074, pairs_count := 1153476, pairs_count_eq_census_sq := "YES", slot_weighted_sum := 30168 },
  { web := "TA_DOCKED", links := 10, unstruck := 9, struck := "L10", measure := 82, rank := 76, rank_resum := 76, rank_eq := "YES", dressing := 12, product := 912, product_spelling := "76 x 12", S1_readout_sum := 912, S1_4728 := 912, S1_eq_4728 := "YES", act1_eq := "9 of 9", S1_eq_product := "YES", S1_4728_eq_product := "YES", S1_minus_product := 0, difference_type := "ZERO", census_integers := "YES", S1_cut := 76, S1_cut_eq_rank := "YES", one_exchange_census := 2226, pairs_count := 4955076, pairs_count_eq_census_sq := "YES", slot_weighted_sum := 296064 },
  { web := "D_DOCKED", links := 7, unstruck := 6, struck := "L7", measure := 52, rank := 46, rank_resum := 46, rank_eq := "YES", dressing := 3, product := 138, product_spelling := "46 x 3", S1_readout_sum := 138, S1_4728 := 138, S1_eq_4728 := "YES", act1_eq := "6 of 6", S1_eq_product := "YES", S1_4728_eq_product := "YES", S1_minus_product := 0, difference_type := "ZERO", census_integers := "YES", S1_cut := 46, S1_cut_eq_rank := "YES", one_exchange_census := 1164, pairs_count := 1354896, pairs_count_eq_census_sq := "YES", slot_weighted_sum := 31788 },
  { web := "S_DOCKED", links := 11, unstruck := 10, struck := "L11", measure := 86, rank := 80, rank_resum := 80, rank_eq := "YES", dressing := 9, product := 720, product_spelling := "80 x 9", S1_readout_sum := 720, S1_4728 := 720, S1_eq_4728 := "YES", act1_eq := "10 of 10", S1_eq_product := "YES", S1_4728_eq_product := "YES", S1_minus_product := 0, difference_type := "ZERO", census_integers := "YES", S1_cut := 80, S1_cut_eq_rank := "YES", one_exchange_census := 2148, pairs_count := 4613904, pairs_count_eq_census_sq := "YES", slot_weighted_sum := 181008 },
  { web := "BA_DOCKED", links := 15, unstruck := 14, struck := "L15", measure := 122, rank := 116, rank_resum := 116, rank_eq := "YES", dressing := 36, product := 4176, product_spelling := "116 x 36", S1_readout_sum := 4176, S1_4728 := 4176, S1_eq_4728 := "YES", act1_eq := "14 of 14", S1_eq_product := "YES", S1_4728_eq_product := "YES", S1_minus_product := 0, difference_type := "ZERO", census_integers := "YES", S1_cut := 116, S1_cut_eq_rank := "YES", one_exchange_census := 3300, pairs_count := 10890000, pairs_count_eq_census_sq := "YES", slot_weighted_sum := 1250208 },
  { web := "r-WPM", links := 4, unstruck := 4, struck := "NONE", measure := 28, rank := 28, rank_resum := 28, rank_eq := "YES", dressing := 1, product := 28, product_spelling := "28 x 1", S1_readout_sum := 28, S1_4728 := 28, S1_eq_4728 := "YES", act1_eq := "4 of 4", S1_eq_product := "YES", S1_4728_eq_product := "YES", S1_minus_product := 0, difference_type := "ZERO", census_integers := "YES", S1_cut := 28, S1_cut_eq_rank := "YES", one_exchange_census := 612, pairs_count := 374544, pairs_count_eq_census_sq := "YES", slot_weighted_sum := 4536 },
  { web := "r-Z0D", links := 4, unstruck := 4, struck := "NONE", measure := 28, rank := 28, rank_resum := 28, rank_eq := "YES", dressing := 1, product := 28, product_spelling := "28 x 1", S1_readout_sum := 28, S1_4728 := 28, S1_eq_4728 := "YES", act1_eq := "4 of 4", S1_eq_product := "YES", S1_4728_eq_product := "YES", S1_minus_product := 0, difference_type := "ZERO", census_integers := "YES", S1_cut := 28, S1_cut_eq_rank := "YES", one_exchange_census := 612, pairs_count := 374544, pairs_count_eq_census_sq := "YES", slot_weighted_sum := 4536 },
  { web := "r-HIG", links := 1, unstruck := 1, struck := "NONE", measure := 16, rank := 16, rank_resum := 16, rank_eq := "YES", dressing := 1, product := 16, product_spelling := "16 x 1", S1_readout_sum := 16, S1_4728 := 16, S1_eq_4728 := "YES", act1_eq := "1 of 1", S1_eq_product := "YES", S1_4728_eq_product := "YES", S1_minus_product := 0, difference_type := "ZERO", census_integers := "YES", S1_cut := 16, S1_cut_eq_rank := "YES", one_exchange_census := 690, pairs_count := 476100, pairs_count_eq_census_sq := "YES", slot_weighted_sum := 11040 },
  { web := "r-GLU", links := 3, unstruck := 3, struck := "NONE", measure := 27, rank := 27, rank_resum := 27, rank_eq := "YES", dressing := 1, product := 27, product_spelling := "27 x 1", S1_readout_sum := 27, S1_4728 := 27, S1_eq_4728 := "YES", act1_eq := "3 of 3", S1_eq_product := "YES", S1_4728_eq_product := "YES", S1_minus_product := 0, difference_type := "ZERO", census_integers := "YES", S1_cut := 27, S1_cut_eq_rank := "YES", one_exchange_census := 600, pairs_count := 360000, pairs_count_eq_census_sq := "YES", slot_weighted_sum := 5400 },
  { web := "N0", links := 5, unstruck := 3, struck := "L4;L5", measure := 36, rank := 20, rank_resum := 20, rank_eq := "YES", dressing := 1, product := 20, product_spelling := "20 x 1", S1_readout_sum := 20, S1_4728 := 20, S1_eq_4728 := "YES", act1_eq := "3 of 3", S1_eq_product := "YES", S1_4728_eq_product := "YES", S1_minus_product := 0, difference_type := "ZERO", census_integers := "YES", S1_cut := 20, S1_cut_eq_rank := "YES", one_exchange_census := 462, pairs_count := 213444, pairs_count_eq_census_sq := "YES", slot_weighted_sum := 3576 },
  { web := "PJ3-WEB", links := 11, unstruck := 11, struck := "NONE", measure := 85, rank := 85, rank_resum := 85, rank_eq := "YES", dressing := 3, product := 255, product_spelling := "85 x 3", S1_readout_sum := 255, S1_4728 := 255, S1_eq_4728 := "YES", act1_eq := "11 of 11", S1_eq_product := "YES", S1_4728_eq_product := "YES", S1_minus_product := 0, difference_type := "ZERO", census_integers := "YES", S1_cut := 85, S1_cut_eq_rank := "YES", one_exchange_census := 1944, pairs_count := 3779136, pairs_count_eq_census_sq := "YES", slot_weighted_sum := 51228 },
  { web := "NJ3-WEB", links := 16, unstruck := 16, struck := "NONE", measure := 125, rank := 125, rank_resum := 125, rank_eq := "YES", dressing := 9, product := 1125, product_spelling := "125 x 9", S1_readout_sum := 1125, S1_4728 := 1125, S1_eq_4728 := "YES", act1_eq := "16 of 16", S1_eq_product := "YES", S1_4728_eq_product := "YES", S1_minus_product := 0, difference_type := "ZERO", census_integers := "YES", S1_cut := 125, S1_cut_eq_rank := "YES", one_exchange_census := 3018, pairs_count := 9108324, pairs_count_eq_census_sq := "YES", slot_weighted_sum := 244188 }
]

theorem check_1 : rows.length = 16 := by decide

theorem check_2 : rows.all (fun r => r.rank * r.dressing == r.product) = true := by decide

theorem check_3 : rows.all (fun r => r.S1_readout_sum == r.product) = true := by decide

theorem check_4 : rows.all (fun r => r.rank == r.rank_resum) = true := by decide

theorem check_5 : rows.all (fun r => r.S1_cut == r.rank) = true := by decide

theorem check_6 : (rows.filter (fun r => r.S1_eq_product == "YES")).length = 16 := by decide

theorem check_7 : (rows.filter (fun r => r.census_integers == "YES")).length = 16 := by decide

theorem checks :
    (rows.length = 16) /\
    (rows.all (fun r => r.rank * r.dressing == r.product) = true) /\
    (rows.all (fun r => r.S1_readout_sum == r.product) = true) /\
    (rows.all (fun r => r.rank == r.rank_resum) = true) /\
    (rows.all (fun r => r.S1_cut == r.rank) = true) /\
    ((rows.filter (fun r => r.S1_eq_product == "YES")).length = 16) /\
    ((rows.filter (fun r => r.census_integers == "YES")).length = 16) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (check_7))))))

end ChainTheory.Data.D526310_FPAR
