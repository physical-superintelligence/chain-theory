set_option maxRecDepth 100000

namespace ChainTheory.Data.D525231_RGAD

structure Row where
  key : String
  value : String
deriving Repr

def rows : List Row := [
  { key := "grup.ad.antisymmetric", value := "3 of 3" },
  { key := "grup.ad.brackets.epsilon", value := "9 of 9" },
  { key := "grup.ad.entries.eq.epsilon", value := "27 of 27" },
  { key := "grup.ad.inside.stabiliser", value := "YES" },
  { key := "grup.ad.matrices", value := "0,0,0;0,0,-1;0,1,0|0,0,1;0,0,0;-1,0,0|0,-1,0;1,0,0;0,0,0" },
  { key := "grup.ad.span.rank", value := "3" },
  { key := "grup.ad.spans.stabiliser", value := "YES" },
  { key := "grup.ad.unit.annihilated", value := "YES" },
  { key := "grup.boost.generator", value := "0,1/2;2,0 at the plane of the unit and the first direction" },
  { key := "grup.boost.generator.isometry", value := "YES" },
  { key := "grup.boost.generators.dim", value := "3" },
  { key := "grup.boost.hypb.remet", value := "YES" },
  { key := "grup.boost.inside.isometry.algebra", value := "YES" },
  { key := "grup.boost.inside.stabiliser", value := "NO" },
  { key := "grup.defined", value := "YES" },
  { key := "grup.gram", value := "6,0,0,0;0,-3/2,0,0;0,0,-3/2,0;0,0,0,-3/2" },
  { key := "grup.isometry.algebra.dim", value := "6" },
  { key := "grup.lattice.improper.element.example", value := "1,0,0;0,-1,0;0,0,1" },
  { key := "grup.lattice.improper.order", value := "24" },
  { key := "grup.lattice.rotations.order", value := "24" },
  { key := "grup.lattice.signed.permutations", value := "48" },
  { key := "grup.lattice.stabiliser.order", value := "48" },
  { key := "grup.lift.eq.rotation", value := "9 of 9" },
  { key := "grup.lift.kernel", value := "the sign minus one at the qubit end acts trivially on the triple: YES" },
  { key := "grup.lift.points", value := "9" },
  { key := "grup.lift.rows", value := "axis 1 (3,4,5) YES;axis 1 (5,12,13) YES;axis 1 (8,15,17) YES;axis 2 (3,4,5) YES;axis 2 (5,12,13) YES;axis 2 (8,15,17) YES;axis 3 (3,4,5) YES;axis 3 (5,12,13) YES;axis 3 (8,15,17) YES" },
  { key := "grup.monomial.image.det.one", value := "32 of 32" },
  { key := "grup.monomial.image.eq.pgrp", value := "YES" },
  { key := "grup.monomial.image.inside.lattice.rotations", value := "YES" },
  { key := "grup.monomial.image.multiplied.by.kernel.eq.order", value := "YES" },
  { key := "grup.monomial.image.order", value := "8" },
  { key := "grup.monomial.image.signed.permutations", value := "32 of 32" },
  { key := "grup.monomial.kernel.order", value := "4" },
  { key := "grup.monomial.order", value := "32" },
  { key := "grup.monomial.order.eq.gruq", value := "YES" },
  { key := "grup.name", value := "THE ROTATION GROUP OF RECORD: the connected stabiliser of the Hermitian unit inside the isometries of the split, the exponentials of the ad matrices of the derived directions (DERIVED); its name SO(3) and the full stabiliser O(3) with the improper element at grade LITERATURE by name alone" },
  { key := "grup.pairings.euclidean.full.order", value := "96" },
  { key := "grup.pairings.euclidean.full.order.eq.2x48", value := "YES" },
  { key := "grup.pairings.lorentzian.evry", value := "INFINITE" },
  { key := "grup.pairings.lorentzian.form", value := "4,-1" },
  { key := "grup.rotation.group.law.same.axis", value := "75 of 75" },
  { key := "grup.rotation.point.example", value := "axis 1 parameter 1/2: 1,0,0;0,3/5,-4/5;0,4/5,3/5" },
  { key := "grup.rotation.points", value := "15" },
  { key := "grup.rotation.points.det.one", value := "15 of 15" },
  { key := "grup.rotation.points.gram.preserved", value := "15 of 15" },
  { key := "grup.rotation.points.orthogonal", value := "15 of 15" },
  { key := "grup.rotation.points.unit.fixed", value := "15 of 15" },
  { key := "grup.stabiliser.algebra.dim", value := "3" },
  { key := "grup.unit.fixed", value := "YES" }
]

theorem check_1 : rows.length = 49 := by decide

theorem check_2 : (rows.filter (fun r => r.key == "grup.ad.entries.eq.epsilon" && r.value == "27 of 27")).length = 1 := by decide

theorem check_3 : (rows.filter (fun r => r.key == "grup.lift.eq.rotation" && r.value == "9 of 9")).length = 1 := by decide

theorem check_4 : (rows.filter (fun r => r.key == "grup.rotation.points.det.one" && r.value == "15 of 15")).length = 1 := by decide

theorem check_5 : (rows.filter (fun r => r.key == "grup.unit.fixed" && r.value == "YES")).length = 1 := by decide

theorem check_6 : (rows.filter (fun r => r.key == "grup.monomial.image.order" && r.value == "8")).length = 1 := by decide

theorem check_7 : (rows.filter (fun r => r.key == "grup.stabiliser.algebra.dim" && r.value == "3")).length = 1 := by decide

theorem check_8 : (rows.filter (fun r => r.key == "grup.isometry.algebra.dim" && r.value == "6")).length = 1 := by decide

theorem check_9 : (rows.filter (fun r => r.key == "grup.monomial.image.det.one" && r.value == "32 of 32")).length = 1 := by decide

theorem checks :
    (rows.length = 49) /\
    ((rows.filter (fun r => r.key == "grup.ad.entries.eq.epsilon" && r.value == "27 of 27")).length = 1) /\
    ((rows.filter (fun r => r.key == "grup.lift.eq.rotation" && r.value == "9 of 9")).length = 1) /\
    ((rows.filter (fun r => r.key == "grup.rotation.points.det.one" && r.value == "15 of 15")).length = 1) /\
    ((rows.filter (fun r => r.key == "grup.unit.fixed" && r.value == "YES")).length = 1) /\
    ((rows.filter (fun r => r.key == "grup.monomial.image.order" && r.value == "8")).length = 1) /\
    ((rows.filter (fun r => r.key == "grup.stabiliser.algebra.dim" && r.value == "3")).length = 1) /\
    ((rows.filter (fun r => r.key == "grup.isometry.algebra.dim" && r.value == "6")).length = 1) /\
    ((rows.filter (fun r => r.key == "grup.monomial.image.det.one" && r.value == "32 of 32")).length = 1) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (And.intro check_5 (And.intro check_6 (And.intro check_7 (And.intro check_8 (check_9))))))))

end ChainTheory.Data.D525231_RGAD
