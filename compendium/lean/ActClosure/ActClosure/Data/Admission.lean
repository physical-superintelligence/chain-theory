import ActClosure.Web

set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosure

structure MoveRow where
  id : String
  kinds : String
  action : String
  delta : String
  genre : String
  precondition : String
  carried : List String
  cells : List (String × Option (Nat × Nat))
  deriving Repr, BEq

def movesOfRecord : List MoveRow := [
  ⟨"A1", "ATT|23", "ADDS", "1", "(2,3)", "ENTRY", ["ENTRY", "GENRE", "FORWARD", "CENTRE", "RULE"], [("ENTRY", some (432, 75)), ("GENRE", some (1, 1)), ("FORWARD", some (1693, 0)), ("CAP", none), ("CENTRE", some (0, 1887)), ("BUDGET", none), ("RULE", some (0, 194))]⟩,
  ⟨"A1I", "REV|ATT|23", "REMOVES", "-1", "(2,3)", "ENTRY", ["ENTRY", "GENRE", "FORWARD", "CENTRE", "BUDGET", "RULE"], [("ENTRY", some (432, 75)), ("GENRE", some (1, 1)), ("FORWARD", some (0, 964)), ("CAP", none), ("CENTRE", some (0, 982)), ("BUDGET", some (9, 0)), ("RULE", some (0, 18))]⟩,
  ⟨"A2", "ATT|24", "ADDS", "1", "(2,4)", "ENTRY", ["ENTRY", "FORWARD", "CENTRE", "RULE"], [("ENTRY", some (2816, 98)), ("GENRE", none), ("FORWARD", some (767, 0)), ("CAP", none), ("CENTRE", some (0, 962)), ("BUDGET", none), ("RULE", some (0, 195))]⟩,
  ⟨"A2I", "REV|ATT|24", "REMOVES", "-1", "(2,4)", "ENTRY", ["ENTRY", "FORWARD", "CENTRE"], [("ENTRY", some (2816, 98)), ("GENRE", none), ("FORWARD", some (0, 690)), ("CAP", none), ("CENTRE", some (0, 690)), ("BUDGET", none), ("RULE", none)]⟩,
  ⟨"A3", "ATT|34", "ADDS", "1", "(3,4)", "ENTRY", ["ENTRY", "FORWARD", "CENTRE", "RULE"], [("ENTRY", some (852, 74)), ("GENRE", none), ("FORWARD", some (173, 0)), ("CAP", none), ("CENTRE", some (0, 180)), ("BUDGET", none), ("RULE", some (0, 7))]⟩,
  ⟨"A3I", "REV|ATT|34", "REMOVES", "-1", "(3,4)", "ENTRY", ["ENTRY", "FORWARD", "CENTRE"], [("ENTRY", some (852, 74)), ("GENRE", none), ("FORWARD", some (0, 168)), ("CAP", none), ("CENTRE", some (0, 168)), ("BUDGET", none), ("RULE", none)]⟩,
  ⟨"CUT", "CUT", "ADDS", "4", "NONE", "FORWARD", ["FORWARD", "CENTRE"], [("ENTRY", none), ("GENRE", none), ("FORWARD", some (12323, 0)), ("CAP", none), ("CENTRE", some (0, 12323)), ("BUDGET", none), ("RULE", none)]⟩,
  ⟨"CUTI", "REV|CUT", "REMOVES", "-4", "NONE", "FORWARD", ["FORWARD", "CENTRE", "BUDGET", "RULE"], [("ENTRY", none), ("GENRE", none), ("FORWARD", some (0, 7336)), ("CAP", none), ("CENTRE", some (62131, 7336)), ("BUDGET", some (31412, 0)), ("RULE", some (0, 62131))]⟩,
  ⟨"HF", "HFA", "ADDS", "2", "NONE", "FORWARD", ["FORWARD", "CENTRE"], [("ENTRY", none), ("GENRE", none), ("FORWARD", some (1693, 0)), ("CAP", none), ("CENTRE", some (0, 1693)), ("BUDGET", none), ("RULE", none)]⟩,
  ⟨"HFB", "HFB", "ADDS", "1", "NONE", "FORWARD", ["FORWARD", "CENTRE"], [("ENTRY", none), ("GENRE", none), ("FORWARD", some (3, 0)), ("CAP", none), ("CENTRE", some (0, 3)), ("BUDGET", none), ("RULE", none)]⟩,
  ⟨"HFBI", "REV|HFB", "REMOVES", "-1", "NONE", "FORWARD", ["FORWARD", "CENTRE"], [("ENTRY", none), ("GENRE", none), ("FORWARD", some (0, 3)), ("CAP", none), ("CENTRE", some (0, 3)), ("BUDGET", none), ("RULE", none)]⟩,
  ⟨"HFI", "REV|HFA", "REMOVES", "-2", "NONE", "FORWARD", ["FORWARD", "CENTRE"], [("ENTRY", none), ("GENRE", none), ("FORWARD", some (0, 1930)), ("CAP", none), ("CENTRE", some (0, 1930)), ("BUDGET", none), ("RULE", none)]⟩,
  ⟨"HSD", "HSD", "ADDS", "3", "NONE", "FORWARD", ["FORWARD", "CENTRE"], [("ENTRY", none), ("GENRE", none), ("FORWARD", some (4954, 0)), ("CAP", none), ("CENTRE", some (0, 4954)), ("BUDGET", none), ("RULE", none)]⟩,
  ⟨"HSDI", "REV|HSD", "REMOVES", "-3", "NONE", "FORWARD", ["FORWARD", "CENTRE", "BUDGET", "RULE"], [("ENTRY", none), ("GENRE", none), ("FORWARD", some (0, 4284)), ("CAP", none), ("CENTRE", some (3482, 6028)), ("BUDGET", some (2544, 0)), ("RULE", some (0, 5226))]⟩,
  ⟨"HSI", "REV|HSP,REV|HSII|KEPT-LEG,REV|HSR", "REMOVES", "-4,-3,-4", "NONE", "FORWARD", ["FORWARD", "CENTRE", "BUDGET", "RULE"], [("ENTRY", none), ("GENRE", none), ("FORWARD", some (0, 12391)), ("CAP", none), ("CENTRE", some (4451, 12391)), ("BUDGET", some (2143, 0)), ("RULE", some (0, 4451))]⟩,
  ⟨"HSII", "HSP,HSII|KEPT-LEG,HSR", "ADDS", "4,3,4", "NONE", "FORWARD", ["FORWARD", "CENTRE", "RULE"], [("ENTRY", none), ("GENRE", none), ("FORWARD", some (18672, 0)), ("CAP", none), ("CENTRE", some (0, 19104)), ("BUDGET", none), ("RULE", some (0, 432))]⟩,
  ⟨"HSP", "HSP", "ADDS", "4", "NONE", "FORWARD", ["FORWARD", "CENTRE"], [("ENTRY", none), ("GENRE", none), ("FORWARD", some (3153, 0)), ("CAP", none), ("CENTRE", some (0, 3153)), ("BUDGET", none), ("RULE", none)]⟩,
  ⟨"HSPI", "REV|HSP", "REMOVES", "-4", "NONE", "FORWARD", ["FORWARD", "CENTRE"], [("ENTRY", none), ("GENRE", none), ("FORWARD", some (0, 2373)), ("CAP", none), ("CENTRE", some (0, 2373)), ("BUDGET", none), ("RULE", none)]⟩,
  ⟨"HSR", "HSR", "ADDS", "4", "NONE", "FORWARD", ["FORWARD", "CENTRE"], [("ENTRY", none), ("GENRE", none), ("FORWARD", some (8480, 0)), ("CAP", none), ("CENTRE", some (0, 8480)), ("BUDGET", none), ("RULE", none)]⟩,
  ⟨"HSRI", "REV|HSR", "REMOVES", "-4", "NONE", "FORWARD", ["FORWARD", "CENTRE"], [("ENTRY", none), ("GENRE", none), ("FORWARD", some (0, 5518)), ("CAP", none), ("CENTRE", some (0, 5518)), ("BUDGET", none), ("RULE", none)]⟩,
  ⟨"J2", "JNW|22,JNX|22", "KEEPS", "0", "(2,2)", "GENRE", ["GENRE", "CAP", "CENTRE", "BUDGET", "RULE"], [("ENTRY", none), ("GENRE", some (5, 2)), ("FORWARD", none), ("CAP", some (2, 6)), ("CENTRE", some (129, 0)), ("BUDGET", some (31, 0)), ("RULE", some (129, 0))]⟩,
  ⟨"J2I", "REV|JNW|22,REV|JNX|22", "KEEPS", "0", "(2,2)", "GENRE", ["GENRE", "CAP"], [("ENTRY", none), ("GENRE", some (5, 2)), ("FORWARD", none), ("CAP", some (2, 6)), ("CENTRE", none), ("BUDGET", none), ("RULE", none)]⟩,
  ⟨"J3", "JNW|33,JNX|33", "KEEPS", "0", "(3,3)", "CAP", ["CAP", "CENTRE", "BUDGET", "RULE"], [("ENTRY", none), ("GENRE", none), ("FORWARD", none), ("CAP", some (3, 4)), ("CENTRE", some (89, 0)), ("BUDGET", some (61, 0)), ("RULE", some (0, 89))]⟩,
  ⟨"J3I", "REV|JNW|33,REV|JNX|33", "KEEPS", "0", "(3,3)", "CAP", ["CAP", "CENTRE", "BUDGET", "RULE"], [("ENTRY", none), ("GENRE", none), ("FORWARD", none), ("CAP", some (3, 4)), ("CENTRE", some (1866, 0)), ("BUDGET", some (1866, 0)), ("RULE", some (0, 1866))]⟩,
  ⟨"J4", "JNW|44,JNX|44", "KEEPS", "0", "(4,4)", "CENTRE", ["CENTRE", "RULE"], [("ENTRY", none), ("GENRE", none), ("FORWARD", none), ("CAP", none), ("CENTRE", some (4, 0)), ("BUDGET", none), ("RULE", some (0, 4))]⟩,
  ⟨"J4I", "REV|JNW|44,REV|JNX|44", "KEEPS", "0", "(4,4)", "NONE", [], [("ENTRY", none), ("GENRE", none), ("FORWARD", none), ("CAP", none), ("CENTRE", none), ("BUDGET", none), ("RULE", none)]⟩,
  ⟨"PM", "JNX|33", "KEEPS", "0", "(3,3)", "CAP", ["CAP"], [("ENTRY", none), ("GENRE", none), ("FORWARD", none), ("CAP", some (3, 4)), ("CENTRE", none), ("BUDGET", none), ("RULE", none)]⟩,
  ⟨"PMI", "REV|JNX|33", "KEEPS", "0", "(3,3)", "CAP", ["CAP"], [("ENTRY", none), ("GENRE", none), ("FORWARD", none), ("CAP", some (3, 4)), ("CENTRE", none), ("BUDGET", none), ("RULE", none)]⟩
]

structure ClauseRow where
  id : String
  name : String
  raw : String
  carried : Nat
  carriedList : List String
  decides : Nat
  deriving Repr, BEq

def clausesOfRecord : List ClauseRow := [
  ⟨"ENTRY", "THE ENTRY END", "544622", 6, ["A1", "A1I", "A2", "A2I", "A3", "A3I"], 6⟩,
  ⟨"GENRE", "THE GENRE AT THE QUBIT", "544486", 4, ["A1", "A1I", "J2", "J2I"], 2⟩,
  ⟨"FORWARD", "THE FORWARD EDGE", "543514", 20, ["A1", "A1I", "A2", "A2I", "A3", "A3I", "CUT", "CUTI", "HF", "HFB", "HFBI", "HFI", "HSD", "HSDI", "HSI", "HSII", "HSP", "HSPI", "HSR", "HSRI"], 14⟩,
  ⟨"CAP", "THE CAP", "539176 and 544009", 6, ["J2", "J2I", "J3", "J3I", "PM", "PMI"], 4⟩,
  ⟨"CENTRE", "THE CENTRE", "543514", 24, ["A1", "A1I", "A2", "A2I", "A3", "A3I", "CUT", "CUTI", "HF", "HFB", "HFBI", "HFI", "HSD", "HSDI", "HSI", "HSII", "HSP", "HSPI", "HSR", "HSRI", "J2", "J3", "J3I", "J4"], 1⟩,
  ⟨"BUDGET", "THE BUDGET", "544065 with 543100", 7, ["A1I", "CUTI", "HSDI", "HSI", "J2", "J3", "J3I"], 0⟩,
  ⟨"RULE", "THE RULE OF RECORD", "543100", 12, ["A1", "A1I", "A2", "A3", "CUTI", "HSDI", "HSI", "HSII", "J2", "J3", "J3I", "J4"], 0⟩
]

end ActClosure
