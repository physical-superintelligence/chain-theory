import KernelDerivationC.Objects

set_option autoImplicit false
set_option maxRecDepth 100000

namespace ChainTheory.Kernel.D524748_SCGI

structure Row where
  body : String
  face : String
  register : Int
deriving Repr

def rows : List Row :=
  KernelDerivationC.Objects.bodies.flatMap (fun b => KernelDerivationC.Objects.faces.map (fun f => { body := b.1, face := f.1, register := (f.2 : Int) }))

theorem rows_eq_record : rows.map (fun r => [r.body, r.face, toString r.register]) = KernelDerivationC.Targets.moduleSCGI := by decide +kernel

theorem objects_of_record : KernelDerivationC.Objects.derivedObjects = KernelDerivationC.Targets.tableSCGI := KernelDerivationC.Objects.objects_derived.1

theorem check_1 : rows.length = 4 := by decide +kernel

theorem check_2 : (rows.filter (fun r => r.register == 16)).length = 2 := by decide +kernel

theorem check_3 : (rows.filter (fun r => r.register == 81)).length = 2 := by decide +kernel

theorem check_4 : (rows.filter (fun r => r.body == "P")).length = 2 := by decide +kernel

theorem check_5 : (rows.filter (fun r => r.body == "N")).length = 2 := by decide +kernel

theorem checks :
    (rows.length = 4) /\
    ((rows.filter (fun r => r.register == 16)).length = 2) /\
    ((rows.filter (fun r => r.register == 81)).length = 2) /\
    ((rows.filter (fun r => r.body == "P")).length = 2) /\
    ((rows.filter (fun r => r.body == "N")).length = 2) :=
  And.intro check_1 (And.intro check_2 (And.intro check_3 (And.intro check_4 (check_5))))

end ChainTheory.Kernel.D524748_SCGI
