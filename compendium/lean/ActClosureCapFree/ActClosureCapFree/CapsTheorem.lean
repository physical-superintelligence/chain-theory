import ActClosureCapFree.Closure
import ActClosureCapFree.Data.Modules
set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosureCapFree

theorem every_count_under_the_caps : allStates.all (underCaps capsOfRecord) = true := by
  simp only [allStates, List.all_append, counts_S001, counts_S002, counts_S003, counts_S004, counts_S005, counts_S006, counts_S007, counts_S008, counts_S009, counts_S010, counts_S011, counts_S012, counts_S013, counts_S014, counts_S015, counts_S016, counts_S017, counts_S018, counts_S019, counts_S020, counts_S021, counts_S022, counts_S023, counts_S024, counts_S025, counts_S026, counts_S027, counts_S028, counts_S029, counts_S030, counts_S031, counts_S032, counts_S033, counts_S034, counts_S035, counts_S036, counts_S037, counts_S038, counts_S039, counts_S040, counts_S041, counts_S042, counts_S043, counts_S044, counts_S045, counts_S046, counts_S047, counts_S048, counts_S049, counts_S050, counts_S051, counts_S052, counts_S053, counts_S054, counts_S055, counts_S056, counts_S057, counts_S058, counts_S059, counts_S060, counts_S061, counts_S062, counts_S063, counts_S064, counts_S065, counts_S066, counts_S067, counts_S068, counts_S069, counts_S070, counts_S071, counts_S072, counts_S073, counts_S074, counts_S075, counts_S076, counts_S077, counts_S078, counts_S079, counts_S080, counts_S081, counts_S082, counts_S083, counts_S084, counts_S085, counts_S086, counts_S087, counts_S088, counts_S089, counts_S090, counts_S091, counts_S092, counts_S093, counts_S094, counts_S095, counts_S096, counts_S097, counts_S098, counts_S099, counts_S100, counts_S101, counts_S102, counts_S103, counts_S104, counts_S105, counts_S106, counts_S107, counts_S108, counts_S109, counts_S110, counts_S111, counts_S112, counts_S113, counts_S114, counts_S115, counts_S116, counts_S117, counts_S118, counts_S119, counts_S120, counts_S121, counts_S122, counts_S123, counts_S124, counts_S125, counts_S126, counts_S127, counts_S128, counts_S129, counts_S130, Bool.and_self]

theorem first_at_or_over_cap : firstAtOrOverCap capsOfRecord allStates = none := by decide +kernel

theorem caps_six : capsOfRecord.length = 6 ∧ capGenres = ActClosure.genres := by decide +kernel

theorem modules_eight : capsModulesOfRecord.length = 8 ∧ declarationsResting = 150 := by decide +kernel

theorem modules_kept_at_a_wall : capsModulesOfRecord.all (fun m => m.disposition == "KEPT-AT-A-WALL" && m.derivingRow == 547814 && m.besideRow == 548174) = true := by decide +kernel
end ActClosureCapFree
