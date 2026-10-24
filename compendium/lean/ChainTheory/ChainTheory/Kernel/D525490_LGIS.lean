import KernelDerivationC.Brackets

set_option autoImplicit false
set_option maxRecDepth 100000

namespace ChainTheory.Kernel.D525490_LGIS

structure Row where
  key : String
  value : String
deriving Repr

def rowOfCell (c : List String) : Row := { key := c.getD 0 "", value := c.getD 1 "" }

def rows : List Row := KernelDerivationC.Brackets.derivedCells.map rowOfCell

theorem cells_of_record : KernelDerivationC.Brackets.derivedCells = KernelDerivationC.Targets.moduleLGIS :=
  KernelDerivationC.Brackets.brackets_of_record.right.right.right.right.right.right.right.right.right.right.right.right.right.right.left

theorem rows_eq_record : rows = KernelDerivationC.Targets.moduleLGIS.map rowOfCell := by
  unfold rows; rw [cells_of_record]

theorem check_1 : rows.length = 41 := by rw [rows_eq_record]; decide

theorem check_2 : (rows.filter (fun r => r.key == "brkt.basis.order" && r.value == "J1;J2;J3;K1;K2;K3")).length = 1 := by rw [rows_eq_record]; decide

theorem check_3 : (rows.filter (fun r => r.key == "brkt.J1,J2" && r.value == "0,0,1,0,0,0")).length = 1 := by rw [rows_eq_record]; decide

theorem check_4 : (rows.filter (fun r => r.key == "brkt.J2,J3" && r.value == "1,0,0,0,0,0")).length = 1 := by rw [rows_eq_record]; decide

theorem check_5 : (rows.filter (fun r => r.key == "brkt.J1,J3" && r.value == "0,-1,0,0,0,0")).length = 1 := by rw [rows_eq_record]; decide

theorem check_6 : (rows.filter (fun r => r.key == "brkt.J1,K2" && r.value == "0,0,0,0,0,1")).length = 1 := by rw [rows_eq_record]; decide

theorem check_7 : (rows.filter (fun r => r.key == "brkt.J2,K3" && r.value == "0,0,0,1,0,0")).length = 1 := by rw [rows_eq_record]; decide

theorem check_8 : (rows.filter (fun r => r.key == "brkt.J3,K1" && r.value == "0,0,0,0,1,0")).length = 1 := by rw [rows_eq_record]; decide

theorem check_9 : (rows.filter (fun r => r.key == "brkt.J1,K3" && r.value == "0,0,0,0,-1,0")).length = 1 := by rw [rows_eq_record]; decide

theorem check_10 : (rows.filter (fun r => r.key == "brkt.J2,K1" && r.value == "0,0,0,0,0,-1")).length = 1 := by rw [rows_eq_record]; decide

theorem check_11 : (rows.filter (fun r => r.key == "brkt.J3,K2" && r.value == "0,0,0,-1,0,0")).length = 1 := by rw [rows_eq_record]; decide

theorem check_12 : (rows.filter (fun r => r.key == "brkt.J1,K1" && r.value == "0,0,0,0,0,0")).length = 1 := by rw [rows_eq_record]; decide

theorem check_13 : (rows.filter (fun r => r.key == "brkt.J2,K2" && r.value == "0,0,0,0,0,0")).length = 1 := by rw [rows_eq_record]; decide

theorem check_14 : (rows.filter (fun r => r.key == "brkt.J3,K3" && r.value == "0,0,0,0,0,0")).length = 1 := by rw [rows_eq_record]; decide

theorem check_15 : (rows.filter (fun r => r.key == "brkt.K1,K2" && r.value == "0,0,-1,0,0,0")).length = 1 := by rw [rows_eq_record]; decide

theorem check_16 : (rows.filter (fun r => r.key == "brkt.K2,K3" && r.value == "-1,0,0,0,0,0")).length = 1 := by rw [rows_eq_record]; decide

theorem check_17 : (rows.filter (fun r => r.key == "brkt.K1,K3" && r.value == "0,1,0,0,0,0")).length = 1 := by rw [rows_eq_record]; decide

theorem check_18 : (rows.filter (fun r => r.key == "brkt.jacobi" && r.value == "20 of 20")).length = 1 := by rw [rows_eq_record]; decide

theorem check_19 : (rows.filter (fun r => r.key == "brkt.killing.signature" && r.value == "3,3")).length = 1 := by rw [rows_eq_record]; decide

theorem check_20 : (rows.filter (fun r => r.key == "brkt.closed.inside.six" && r.value == "15 of 15")).length = 1 := by rw [rows_eq_record]; decide

theorem checks :
    (rows.length = 41) /\
    ((rows.filter (fun r => r.key == "brkt.basis.order" && r.value == "J1;J2;J3;K1;K2;K3")).length = 1) /\
    ((rows.filter (fun r => r.key == "brkt.J1,J2" && r.value == "0,0,1,0,0,0")).length = 1) /\
    ((rows.filter (fun r => r.key == "brkt.J2,J3" && r.value == "1,0,0,0,0,0")).length = 1) /\
    ((rows.filter (fun r => r.key == "brkt.J1,J3" && r.value == "0,-1,0,0,0,0")).length = 1) /\
    ((rows.filter (fun r => r.key == "brkt.J1,K2" && r.value == "0,0,0,0,0,1")).length = 1) /\
    ((rows.filter (fun r => r.key == "brkt.J2,K3" && r.value == "0,0,0,1,0,0")).length = 1) /\
    ((rows.filter (fun r => r.key == "brkt.J3,K1" && r.value == "0,0,0,0,1,0")).length = 1) /\
    ((rows.filter (fun r => r.key == "brkt.J1,K3" && r.value == "0,0,0,0,-1,0")).length = 1) /\
    ((rows.filter (fun r => r.key == "brkt.J2,K1" && r.value == "0,0,0,0,0,-1")).length = 1) /\
    ((rows.filter (fun r => r.key == "brkt.J3,K2" && r.value == "0,0,0,-1,0,0")).length = 1) /\
    ((rows.filter (fun r => r.key == "brkt.J1,K1" && r.value == "0,0,0,0,0,0")).length = 1) /\
    ((rows.filter (fun r => r.key == "brkt.J2,K2" && r.value == "0,0,0,0,0,0")).length = 1) /\
    ((rows.filter (fun r => r.key == "brkt.J3,K3" && r.value == "0,0,0,0,0,0")).length = 1) /\
    ((rows.filter (fun r => r.key == "brkt.K1,K2" && r.value == "0,0,-1,0,0,0")).length = 1) /\
    ((rows.filter (fun r => r.key == "brkt.K2,K3" && r.value == "-1,0,0,0,0,0")).length = 1) /\
    ((rows.filter (fun r => r.key == "brkt.K1,K3" && r.value == "0,1,0,0,0,0")).length = 1) /\
    ((rows.filter (fun r => r.key == "brkt.jacobi" && r.value == "20 of 20")).length = 1) /\
    ((rows.filter (fun r => r.key == "brkt.killing.signature" && r.value == "3,3")).length = 1) /\
    ((rows.filter (fun r => r.key == "brkt.closed.inside.six" && r.value == "15 of 15")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (And.intro check_9 (And.intro check_10 (And.intro check_11 (And.intro check_12 (And.intro check_13 (And.intro check_14 (And.intro check_15 (And.intro check_16 (And.intro check_17 (And.intro check_18 (And.intro check_19 (check_20)))))))))))))))))))

end ChainTheory.Kernel.D525490_LGIS
