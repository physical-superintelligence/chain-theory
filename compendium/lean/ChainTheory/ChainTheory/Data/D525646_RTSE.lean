set_option maxRecDepth 100000

namespace ChainTheory.Data.D525646_RTSE

structure Row where
  reading : String
  of_record : String
  permutation : String
  map : String
  onelink : String
  classes_eq : String
  ends_eq : String
  first_excluding : String
  letter : String
deriving Repr

def rows : List Row := [
  { reading := "NEAR.ROLEFAR", of_record := "YES", permutation := "P1", map := "NEAR:ONE;FAR-WASHED:DLESS;FAR-OPEN:DPLUS", onelink := "NEAR@CORE:1;FAR-OPEN@CORE:4;NEAR@DOCK:1;FAR-WASHED@DOCK:1", classes_eq := "1 of 4", ends_eq := "4 of 8", first_excluding := "MIXED:QUBIT:FAR-OPEN at CORE assigns 4 against 2 of record", letter := "EXCLUDED" },
  { reading := "NEAR.ROLEFAR", of_record := "YES", permutation := "P2", map := "NEAR:ONE;FAR-WASHED:DPLUS;FAR-OPEN:DLESS", onelink := "NEAR@CORE:1;FAR-OPEN@CORE:2;NEAR@DOCK:1;FAR-WASHED@DOCK:3", classes_eq := "4 of 4", ends_eq := "8 of 8", first_excluding := "NONE", letter := "EQUAL" },
  { reading := "NEAR.ROLEFAR", of_record := "YES", permutation := "P3", map := "NEAR:DLESS;FAR-WASHED:ONE;FAR-OPEN:DPLUS", onelink := "NEAR@CORE:2;FAR-OPEN@CORE:4;NEAR@DOCK:1;FAR-WASHED@DOCK:1", classes_eq := "0 of 4", ends_eq := "2 of 8", first_excluding := "ODD:QUTRIT:NEAR at CORE assigns 2 against 1 of record", letter := "EXCLUDED" },
  { reading := "NEAR.ROLEFAR", of_record := "YES", permutation := "P4", map := "NEAR:DLESS;FAR-WASHED:DPLUS;FAR-OPEN:ONE", onelink := "NEAR@CORE:2;FAR-OPEN@CORE:1;NEAR@DOCK:1;FAR-WASHED@DOCK:3", classes_eq := "1 of 4", ends_eq := "4 of 8", first_excluding := "ODD:QUTRIT:NEAR at CORE assigns 2 against 1 of record", letter := "EXCLUDED" },
  { reading := "NEAR.ROLEFAR", of_record := "YES", permutation := "P5", map := "NEAR:DPLUS;FAR-WASHED:ONE;FAR-OPEN:DLESS", onelink := "NEAR@CORE:4;FAR-OPEN@CORE:2;NEAR@DOCK:3;FAR-WASHED@DOCK:1", classes_eq := "0 of 4", ends_eq := "2 of 8", first_excluding := "ODD:QUTRIT:NEAR at CORE assigns 4 against 1 of record", letter := "EXCLUDED" },
  { reading := "NEAR.ROLEFAR", of_record := "YES", permutation := "P6", map := "NEAR:DPLUS;FAR-WASHED:DLESS;FAR-OPEN:ONE", onelink := "NEAR@CORE:4;FAR-OPEN@CORE:1;NEAR@DOCK:3;FAR-WASHED@DOCK:1", classes_eq := "0 of 4", ends_eq := "0 of 8", first_excluding := "ODD:QUTRIT:NEAR at CORE assigns 4 against 1 of record", letter := "EXCLUDED" },
  { reading := "OWN.ROLEFAR", of_record := "NO", permutation := "P1", map := "NEAR:ONE;FAR-WASHED:DLESS;FAR-OPEN:DPLUS", onelink := "NEAR@CORE:1;FAR-OPEN@CORE:3;NEAR@DOCK:1;FAR-WASHED@DOCK:2", classes_eq := "1 of 4", ends_eq := "4 of 8", first_excluding := "MIXED:QUBIT:FAR-OPEN at CORE assigns 3 against 2 of record", letter := "EXCLUDED" },
  { reading := "OWN.ROLEFAR", of_record := "NO", permutation := "P2", map := "NEAR:ONE;FAR-WASHED:DPLUS;FAR-OPEN:DLESS", onelink := "NEAR@CORE:1;FAR-OPEN@CORE:1;NEAR@DOCK:1;FAR-WASHED@DOCK:4", classes_eq := "1 of 4", ends_eq := "4 of 8", first_excluding := "MIXED:QUBIT:FAR-OPEN at CORE assigns 1 against 2 of record", letter := "EXCLUDED" },
  { reading := "OWN.ROLEFAR", of_record := "NO", permutation := "P3", map := "NEAR:DLESS;FAR-WASHED:ONE;FAR-OPEN:DPLUS", onelink := "NEAR@CORE:2;FAR-OPEN@CORE:3;NEAR@DOCK:1;FAR-WASHED@DOCK:1", classes_eq := "0 of 4", ends_eq := "2 of 8", first_excluding := "ODD:QUTRIT:NEAR at CORE assigns 2 against 1 of record", letter := "EXCLUDED" },
  { reading := "OWN.ROLEFAR", of_record := "NO", permutation := "P4", map := "NEAR:DLESS;FAR-WASHED:DPLUS;FAR-OPEN:ONE", onelink := "NEAR@CORE:2;FAR-OPEN@CORE:1;NEAR@DOCK:1;FAR-WASHED@DOCK:4", classes_eq := "0 of 4", ends_eq := "2 of 8", first_excluding := "ODD:QUTRIT:NEAR at CORE assigns 2 against 1 of record", letter := "EXCLUDED" },
  { reading := "OWN.ROLEFAR", of_record := "NO", permutation := "P5", map := "NEAR:DPLUS;FAR-WASHED:ONE;FAR-OPEN:DLESS", onelink := "NEAR@CORE:4;FAR-OPEN@CORE:1;NEAR@DOCK:3;FAR-WASHED@DOCK:1", classes_eq := "0 of 4", ends_eq := "0 of 8", first_excluding := "ODD:QUTRIT:NEAR at CORE assigns 4 against 1 of record", letter := "EXCLUDED" },
  { reading := "OWN.ROLEFAR", of_record := "NO", permutation := "P6", map := "NEAR:DPLUS;FAR-WASHED:DLESS;FAR-OPEN:ONE", onelink := "NEAR@CORE:4;FAR-OPEN@CORE:1;NEAR@DOCK:3;FAR-WASHED@DOCK:2", classes_eq := "0 of 4", ends_eq := "0 of 8", first_excluding := "ODD:QUTRIT:NEAR at CORE assigns 4 against 1 of record", letter := "EXCLUDED" },
  { reading := "OPP.ROLEFAR", of_record := "NO", permutation := "P1", map := "NEAR:ONE;FAR-WASHED:DLESS;FAR-OPEN:DPLUS", onelink := "NEAR@CORE:1;FAR-OPEN@CORE:4;NEAR@DOCK:1;FAR-WASHED@DOCK:1", classes_eq := "1 of 4", ends_eq := "4 of 8", first_excluding := "MIXED:QUBIT:FAR-OPEN at CORE assigns 4 against 2 of record", letter := "EXCLUDED" },
  { reading := "OPP.ROLEFAR", of_record := "NO", permutation := "P2", map := "NEAR:ONE;FAR-WASHED:DPLUS;FAR-OPEN:DLESS", onelink := "NEAR@CORE:1;FAR-OPEN@CORE:2;NEAR@DOCK:1;FAR-WASHED@DOCK:3", classes_eq := "4 of 4", ends_eq := "8 of 8", first_excluding := "NONE", letter := "EQUAL" },
  { reading := "OPP.ROLEFAR", of_record := "NO", permutation := "P3", map := "NEAR:DLESS;FAR-WASHED:ONE;FAR-OPEN:DPLUS", onelink := "NEAR@CORE:1;FAR-OPEN@CORE:4;NEAR@DOCK:2;FAR-WASHED@DOCK:1", classes_eq := "0 of 4", ends_eq := "2 of 8", first_excluding := "ODD:QUBIT:NEAR at DOCK assigns 2 against 1 of record", letter := "EXCLUDED" },
  { reading := "OPP.ROLEFAR", of_record := "NO", permutation := "P4", map := "NEAR:DLESS;FAR-WASHED:DPLUS;FAR-OPEN:ONE", onelink := "NEAR@CORE:1;FAR-OPEN@CORE:1;NEAR@DOCK:2;FAR-WASHED@DOCK:3", classes_eq := "0 of 4", ends_eq := "4 of 8", first_excluding := "ODD:QUBIT:NEAR at DOCK assigns 2 against 1 of record", letter := "EXCLUDED" },
  { reading := "OPP.ROLEFAR", of_record := "NO", permutation := "P5", map := "NEAR:DPLUS;FAR-WASHED:ONE;FAR-OPEN:DLESS", onelink := "NEAR@CORE:3;FAR-OPEN@CORE:2;NEAR@DOCK:4;FAR-WASHED@DOCK:1", classes_eq := "0 of 4", ends_eq := "2 of 8", first_excluding := "ODD:QUTRIT:NEAR at CORE assigns 3 against 1 of record", letter := "EXCLUDED" },
  { reading := "OPP.ROLEFAR", of_record := "NO", permutation := "P6", map := "NEAR:DPLUS;FAR-WASHED:DLESS;FAR-OPEN:ONE", onelink := "NEAR@CORE:3;FAR-OPEN@CORE:1;NEAR@DOCK:4;FAR-WASHED@DOCK:1", classes_eq := "0 of 4", ends_eq := "0 of 8", first_excluding := "ODD:QUTRIT:NEAR at CORE assigns 3 against 1 of record", letter := "EXCLUDED" },
  { reading := "DIRCOUNT.ROLEFAR", of_record := "NO", permutation := "DIRCOUNT", map := "NEAR:ONE;FAR-WASHED:DFAR;FAR-OPEN:DFAR (the washed direction count, a far end carrying its own dimension)", onelink := "-", classes_eq := "4 of 4", ends_eq := "8 of 8", first_excluding := "NONE", letter := "EQUAL" },
  { reading := "NEAR.COREONLY", of_record := "NO", permutation := "P1", map := "NEAR:ONE;FAR-WASHED:DLESS;FAR-OPEN:DPLUS", onelink := "NEAR@CORE:1;FAR-OPEN@CORE:4;NEAR@DOCK:1;FAR-WASHED@DOCK:1", classes_eq := "0 of 4", ends_eq := "2 of 8", first_excluding := "ODD:QUBIT:FAR-OPEN at CORE assigns 4 against 1 of record", letter := "EXCLUDED" },
  { reading := "NEAR.COREONLY", of_record := "NO", permutation := "P2", map := "NEAR:ONE;FAR-WASHED:DPLUS;FAR-OPEN:DLESS", onelink := "NEAR@CORE:1;FAR-OPEN@CORE:2;NEAR@DOCK:1;FAR-WASHED@DOCK:3", classes_eq := "1 of 4", ends_eq := "4 of 8", first_excluding := "ODD:QUBIT:FAR-OPEN at CORE assigns 2 against 1 of record", letter := "EXCLUDED" },
  { reading := "NEAR.COREONLY", of_record := "NO", permutation := "P3", map := "NEAR:DLESS;FAR-WASHED:ONE;FAR-OPEN:DPLUS", onelink := "NEAR@CORE:2;FAR-OPEN@CORE:4;NEAR@DOCK:1;FAR-WASHED@DOCK:1", classes_eq := "0 of 4", ends_eq := "0 of 8", first_excluding := "ODD:QUTRIT:NEAR at CORE assigns 2 against 1 of record", letter := "EXCLUDED" },
  { reading := "NEAR.COREONLY", of_record := "NO", permutation := "P4", map := "NEAR:DLESS;FAR-WASHED:DPLUS;FAR-OPEN:ONE", onelink := "NEAR@CORE:2;FAR-OPEN@CORE:1;NEAR@DOCK:1;FAR-WASHED@DOCK:3", classes_eq := "0 of 4", ends_eq := "2 of 8", first_excluding := "ODD:QUTRIT:NEAR at CORE assigns 2 against 1 of record", letter := "EXCLUDED" },
  { reading := "NEAR.COREONLY", of_record := "NO", permutation := "P5", map := "NEAR:DPLUS;FAR-WASHED:ONE;FAR-OPEN:DLESS", onelink := "NEAR@CORE:4;FAR-OPEN@CORE:2;NEAR@DOCK:3;FAR-WASHED@DOCK:1", classes_eq := "0 of 4", ends_eq := "2 of 8", first_excluding := "ODD:QUTRIT:NEAR at CORE assigns 4 against 1 of record", letter := "EXCLUDED" },
  { reading := "NEAR.COREONLY", of_record := "NO", permutation := "P6", map := "NEAR:DPLUS;FAR-WASHED:DLESS;FAR-OPEN:ONE", onelink := "NEAR@CORE:4;FAR-OPEN@CORE:1;NEAR@DOCK:3;FAR-WASHED@DOCK:1", classes_eq := "0 of 4", ends_eq := "2 of 8", first_excluding := "ODD:QUTRIT:NEAR at CORE assigns 4 against 1 of record", letter := "EXCLUDED" },
  { reading := "OWN.COREONLY", of_record := "NO", permutation := "P1", map := "NEAR:ONE;FAR-WASHED:DLESS;FAR-OPEN:DPLUS", onelink := "NEAR@CORE:1;FAR-OPEN@CORE:3;NEAR@DOCK:1;FAR-WASHED@DOCK:2", classes_eq := "0 of 4", ends_eq := "2 of 8", first_excluding := "ODD:QUBIT:FAR-OPEN at CORE assigns 3 against 1 of record", letter := "EXCLUDED" },
  { reading := "OWN.COREONLY", of_record := "NO", permutation := "P2", map := "NEAR:ONE;FAR-WASHED:DPLUS;FAR-OPEN:DLESS", onelink := "NEAR@CORE:1;FAR-OPEN@CORE:1;NEAR@DOCK:1;FAR-WASHED@DOCK:4", classes_eq := "1 of 4", ends_eq := "4 of 8", first_excluding := "MIXED:QUBIT:FAR-OPEN at CORE assigns 1 against 2 of record", letter := "EXCLUDED" },
  { reading := "OWN.COREONLY", of_record := "NO", permutation := "P3", map := "NEAR:DLESS;FAR-WASHED:ONE;FAR-OPEN:DPLUS", onelink := "NEAR@CORE:2;FAR-OPEN@CORE:3;NEAR@DOCK:1;FAR-WASHED@DOCK:1", classes_eq := "0 of 4", ends_eq := "0 of 8", first_excluding := "ODD:QUTRIT:NEAR at CORE assigns 2 against 1 of record", letter := "EXCLUDED" },
  { reading := "OWN.COREONLY", of_record := "NO", permutation := "P4", map := "NEAR:DLESS;FAR-WASHED:DPLUS;FAR-OPEN:ONE", onelink := "NEAR@CORE:2;FAR-OPEN@CORE:1;NEAR@DOCK:1;FAR-WASHED@DOCK:4", classes_eq := "0 of 4", ends_eq := "2 of 8", first_excluding := "ODD:QUTRIT:NEAR at CORE assigns 2 against 1 of record", letter := "EXCLUDED" },
  { reading := "OWN.COREONLY", of_record := "NO", permutation := "P5", map := "NEAR:DPLUS;FAR-WASHED:ONE;FAR-OPEN:DLESS", onelink := "NEAR@CORE:4;FAR-OPEN@CORE:1;NEAR@DOCK:3;FAR-WASHED@DOCK:1", classes_eq := "0 of 4", ends_eq := "2 of 8", first_excluding := "ODD:QUTRIT:NEAR at CORE assigns 4 against 1 of record", letter := "EXCLUDED" },
  { reading := "OWN.COREONLY", of_record := "NO", permutation := "P6", map := "NEAR:DPLUS;FAR-WASHED:DLESS;FAR-OPEN:ONE", onelink := "NEAR@CORE:4;FAR-OPEN@CORE:1;NEAR@DOCK:3;FAR-WASHED@DOCK:2", classes_eq := "0 of 4", ends_eq := "2 of 8", first_excluding := "ODD:QUTRIT:NEAR at CORE assigns 4 against 1 of record", letter := "EXCLUDED" },
  { reading := "OPP.COREONLY", of_record := "NO", permutation := "P1", map := "NEAR:ONE;FAR-WASHED:DLESS;FAR-OPEN:DPLUS", onelink := "NEAR@CORE:1;FAR-OPEN@CORE:4;NEAR@DOCK:1;FAR-WASHED@DOCK:1", classes_eq := "0 of 4", ends_eq := "2 of 8", first_excluding := "ODD:QUBIT:FAR-OPEN at CORE assigns 4 against 1 of record", letter := "EXCLUDED" },
  { reading := "OPP.COREONLY", of_record := "NO", permutation := "P2", map := "NEAR:ONE;FAR-WASHED:DPLUS;FAR-OPEN:DLESS", onelink := "NEAR@CORE:1;FAR-OPEN@CORE:2;NEAR@DOCK:1;FAR-WASHED@DOCK:3", classes_eq := "1 of 4", ends_eq := "4 of 8", first_excluding := "ODD:QUBIT:FAR-OPEN at CORE assigns 2 against 1 of record", letter := "EXCLUDED" },
  { reading := "OPP.COREONLY", of_record := "NO", permutation := "P3", map := "NEAR:DLESS;FAR-WASHED:ONE;FAR-OPEN:DPLUS", onelink := "NEAR@CORE:1;FAR-OPEN@CORE:4;NEAR@DOCK:2;FAR-WASHED@DOCK:1", classes_eq := "0 of 4", ends_eq := "2 of 8", first_excluding := "ODD:QUBIT:FAR-OPEN at CORE assigns 4 against 1 of record", letter := "EXCLUDED" },
  { reading := "OPP.COREONLY", of_record := "NO", permutation := "P4", map := "NEAR:DLESS;FAR-WASHED:DPLUS;FAR-OPEN:ONE", onelink := "NEAR@CORE:1;FAR-OPEN@CORE:1;NEAR@DOCK:2;FAR-WASHED@DOCK:3", classes_eq := "1 of 4", ends_eq := "4 of 8", first_excluding := "MIXED:QUBIT:FAR-OPEN at CORE assigns 1 against 2 of record", letter := "EXCLUDED" },
  { reading := "OPP.COREONLY", of_record := "NO", permutation := "P5", map := "NEAR:DPLUS;FAR-WASHED:ONE;FAR-OPEN:DLESS", onelink := "NEAR@CORE:3;FAR-OPEN@CORE:2;NEAR@DOCK:4;FAR-WASHED@DOCK:1", classes_eq := "1 of 4", ends_eq := "4 of 8", first_excluding := "ODD:QUTRIT:NEAR at CORE assigns 3 against 1 of record", letter := "EXCLUDED" },
  { reading := "OPP.COREONLY", of_record := "NO", permutation := "P6", map := "NEAR:DPLUS;FAR-WASHED:DLESS;FAR-OPEN:ONE", onelink := "NEAR@CORE:3;FAR-OPEN@CORE:1;NEAR@DOCK:4;FAR-WASHED@DOCK:1", classes_eq := "1 of 4", ends_eq := "4 of 8", first_excluding := "ODD:QUTRIT:NEAR at CORE assigns 3 against 1 of record", letter := "EXCLUDED" },
  { reading := "DIRCOUNT.COREONLY", of_record := "NO", permutation := "DIRCOUNT", map := "NEAR:ONE;FAR-WASHED:DFAR;FAR-OPEN:DFAR (the washed direction count, a far end carrying its own dimension)", onelink := "-", classes_eq := "1 of 4", ends_eq := "4 of 8", first_excluding := "ODD:QUBIT:FAR-OPEN at CORE assigns 2 against 1 of record", letter := "EXCLUDED" }
]

theorem check_1 : rows.length = 38 := by decide

theorem check_2 : (rows.filter (fun r => r.reading == "NEAR.ROLEFAR" && r.letter == "EQUAL")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.reading == "NEAR.ROLEFAR" && r.letter == "EXCLUDED")).length = 5 := by decide

theorem check_4 : (rows.filter (fun r => r.reading == "NEAR.ROLEFAR")).length = 6 := by decide

theorem checks :
    (rows.length = 38) /\
    ((rows.filter (fun r => r.reading == "NEAR.ROLEFAR" && r.letter == "EQUAL")).length = 1) /\
    ((rows.filter (fun r => r.reading == "NEAR.ROLEFAR" && r.letter == "EXCLUDED")).length = 5) /\
    ((rows.filter (fun r => r.reading == "NEAR.ROLEFAR")).length = 6) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (check_4)))

end ChainTheory.Data.D525646_RTSE
