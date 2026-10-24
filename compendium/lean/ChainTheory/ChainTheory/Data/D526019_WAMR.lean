set_option maxRecDepth 100000

namespace ChainTheory.Data.D526019_WAMR

structure Row where
  body : String
  sites : Int
  links : Int
  kit_arrows : Int
  kit_ends : Int
  acts : Int
  c_open : Int
  washed : Int
  open_boundary : Int
  open_inside : Int
  open_joinkept : Int
  arrows_remet : String
  slbc_remet : String
  wash_moved_acts : Int
  bodies_slbc_remet : String
  dock_links_at_kit : Int
  both_engines : String
deriving Repr

def rows : List Row := [
  { body := "E_TWODOCK", sites := 9, links := 10, kit_arrows := 20, kit_ends := 20, acts := 20, c_open := 6, washed := 14, open_boundary := 3, open_inside := 3, open_joinkept := 4, arrows_remet := "20 of 20", slbc_remet := "20 of 20", wash_moved_acts := 0, bodies_slbc_remet := "YES", dock_links_at_kit := 2, both_engines := "SAME" },
  { body := "T6-MU-LEAF", sites := 13, links := 15, kit_arrows := 30, kit_ends := 30, acts := 30, c_open := 9, washed := 21, open_boundary := 2, open_inside := 7, open_joinkept := 4, arrows_remet := "30 of 30", slbc_remet := "30 of 30", wash_moved_acts := 0, bodies_slbc_remet := "YES", dock_links_at_kit := 1, both_engines := "SAME" },
  { body := "T6-TAU-LL", sites := 17, links := 20, kit_arrows := 40, kit_ends := 40, acts := 40, c_open := 12, washed := 28, open_boundary := 1, open_inside := 11, open_joinkept := 4, arrows_remet := "40 of 40", slbc_remet := "40 of 40", wash_moved_acts := 0, bodies_slbc_remet := "YES", dock_links_at_kit := 0, both_engines := "SAME" },
  { body := "U_DOCKED", sites := 3, links := 2, kit_arrows := 4, kit_ends := 4, acts := 4, c_open := 2, washed := 2, open_boundary := 2, open_inside := 0, open_joinkept := 2, arrows_remet := "4 of 4", slbc_remet := "4 of 4", wash_moved_acts := 0, bodies_slbc_remet := "YES", dock_links_at_kit := 2, both_engines := "SAME" },
  { body := "C_DOCKED", sites := 6, links := 6, kit_arrows := 12, kit_ends := 12, acts := 12, c_open := 5, washed := 7, open_boundary := 3, open_inside := 2, open_joinkept := 2, arrows_remet := "12 of 12", slbc_remet := "12 of 12", wash_moved_acts := 0, bodies_slbc_remet := "YES", dock_links_at_kit := 1, both_engines := "SAME" },
  { body := "TA_DOCKED", sites := 9, links := 10, kit_arrows := 20, kit_ends := 20, acts := 20, c_open := 7, washed := 13, open_boundary := 3, open_inside := 4, open_joinkept := 2, arrows_remet := "20 of 20", slbc_remet := "20 of 20", wash_moved_acts := 0, bodies_slbc_remet := "YES", dock_links_at_kit := 1, both_engines := "SAME" },
  { body := "D_DOCKED", sites := 7, links := 7, kit_arrows := 14, kit_ends := 14, acts := 14, c_open := 6, washed := 8, open_boundary := 3, open_inside := 3, open_joinkept := 3, arrows_remet := "14 of 14", slbc_remet := "14 of 14", wash_moved_acts := 0, bodies_slbc_remet := "YES", dock_links_at_kit := 2, both_engines := "SAME" },
  { body := "S_DOCKED", sites := 10, links := 11, kit_arrows := 22, kit_ends := 22, acts := 22, c_open := 9, washed := 13, open_boundary := 3, open_inside := 6, open_joinkept := 3, arrows_remet := "22 of 22", slbc_remet := "22 of 22", wash_moved_acts := 0, bodies_slbc_remet := "YES", dock_links_at_kit := 1, both_engines := "SAME" },
  { body := "BA_DOCKED", sites := 13, links := 15, kit_arrows := 30, kit_ends := 30, acts := 30, c_open := 11, washed := 19, open_boundary := 3, open_inside := 8, open_joinkept := 3, arrows_remet := "30 of 30", slbc_remet := "30 of 30", wash_moved_acts := 0, bodies_slbc_remet := "YES", dock_links_at_kit := 1, both_engines := "SAME" },
  { body := "r-WPM", sites := 5, links := 4, kit_arrows := 8, kit_ends := 8, acts := 8, c_open := 4, washed := 4, open_boundary := 0, open_inside := 4, open_joinkept := 0, arrows_remet := "8 of 8", slbc_remet := "8 of 8", wash_moved_acts := 0, bodies_slbc_remet := "YES", dock_links_at_kit := 2, both_engines := "SAME" },
  { body := "r-Z0D", sites := 5, links := 4, kit_arrows := 8, kit_ends := 8, acts := 8, c_open := 4, washed := 4, open_boundary := 0, open_inside := 4, open_joinkept := 0, arrows_remet := "8 of 8", slbc_remet := "8 of 8", wash_moved_acts := 0, bodies_slbc_remet := "YES", dock_links_at_kit := 2, both_engines := "SAME" },
  { body := "r-HIG", sites := 2, links := 1, kit_arrows := 2, kit_ends := 2, acts := 2, c_open := 0, washed := 2, open_boundary := 0, open_inside := 0, open_joinkept := 0, arrows_remet := "2 of 2", slbc_remet := "2 of 2", wash_moved_acts := 0, bodies_slbc_remet := "YES", dock_links_at_kit := 0, both_engines := "SAME" },
  { body := "r-GLU", sites := 4, links := 3, kit_arrows := 6, kit_ends := 6, acts := 6, c_open := 0, washed := 6, open_boundary := 0, open_inside := 0, open_joinkept := 0, arrows_remet := "6 of 6", slbc_remet := "6 of 6", wash_moved_acts := 0, bodies_slbc_remet := "YES", dock_links_at_kit := 0, both_engines := "SAME" },
  { body := "U0:NEUTRAL:U", sites := 5, links := 6, kit_arrows := 12, kit_ends := 12, acts := 12, c_open := 3, washed := 9, open_boundary := 1, open_inside := 2, open_joinkept := 1, arrows_remet := "12 of 12", slbc_remet := "12 of 12", wash_moved_acts := 0, bodies_slbc_remet := "YES", dock_links_at_kit := 3, both_engines := "SAME" }
]

theorem check_1 : rows.length = 14 := by decide

theorem check_2 : rows.all (fun r => r.wash_moved_acts == 0) = true := by decide

theorem check_3 : rows.all (fun r => r.acts == r.kit_arrows) = true := by decide

theorem check_4 : rows.all (fun r => r.kit_arrows == r.kit_ends) = true := by decide

theorem check_5 : (rows.filter (fun r => r.both_engines == "SAME")).length = 14 := by decide

theorem check_6 : (rows.filter (fun r => r.bodies_slbc_remet == "YES")).length = 14 := by decide

theorem checks :
    (rows.length = 14) /\
    (rows.all (fun r => r.wash_moved_acts == 0) = true) /\
    (rows.all (fun r => r.acts == r.kit_arrows) = true) /\
    (rows.all (fun r => r.kit_arrows == r.kit_ends) = true) /\
    ((rows.filter (fun r => r.both_engines == "SAME")).length = 14) /\
    ((rows.filter (fun r => r.bodies_slbc_remet == "YES")).length = 14) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (check_6)))))

end ChainTheory.Data.D526019_WAMR
