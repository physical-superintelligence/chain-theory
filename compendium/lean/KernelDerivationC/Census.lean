import KernelDerivationC

set_option autoImplicit false
set_option maxRecDepth 100000
open KernelDerivationC
#eval IO.println ("LINK\t" ++ toString Brackets.pairDims ++ "\t" ++ toString Brackets.dSupport ++ "\t" ++ toString Brackets.dOther ++ "\t" ++ toString Brackets.dimTotal)
#eval IO.println ("GRAM\t" ++ MatQ.str Brackets.gram)
#eval IO.println ("DIMS\t" ++ toString Brackets.algebraDim ++ "\t" ++ toString Brackets.stabiliserDim ++ "\t" ++ toString Brackets.directionBracketsEpsilon ++ "\t" ++ toString Brackets.gramImaginaryZero)
#eval Brackets.basis.forM (fun X => IO.println ("GENERATOR\t" ++ MatQ.str X))
#eval Brackets.derivedCells.forM (fun r => IO.println ("CELL\t" ++ String.intercalate "\t" r))
#eval IO.println ("REGISTER\t" ++ toString Objects.dockRegister ++ "\t" ++ toString Objects.portRegister ++ "\t" ++ toString Objects.junctionRegister ++ "\t" ++ toString Objects.dPort ++ "\t" ++ toString Objects.wholeFace ++ "\t" ++ toString Objects.cutFace ++ "\t" ++ toString Objects.starOrderOne ++ "\t" ++ toString Objects.starOrderTwo)
#eval IO.println ("READ\t" ++ R3.str Objects.chainSum ++ "\t" ++ R3.str Objects.g33 ++ "\t" ++ R3.str Objects.G2 ++ "\t" ++ R3.str Objects.junctionRead ++ "\t" ++ toString (Objects.armSum Inputs.protonArms) ++ "\t" ++ toString (Objects.armSum Inputs.neutronArms))
#eval Objects.derivedObjects.forM (fun r => IO.println ("OBJECT\t" ++ String.intercalate "\t" r))
#eval Objects.derivedRowOne.forM (fun r => IO.println ("ROWONE\t" ++ String.intercalate "\t" r))
#eval Materials.sixModules.forM (fun m => IO.println ("MODULE\t" ++ m.name ++ "\t" ++ m.kind ++ "\t" ++ toString m.layer ++ "\t" ++ toString m.derivingRow ++ "\t" ++ toString m.rows ++ "\t" ++ toString m.derived))
#eval IO.println ("FIRST\t" ++ (match Materials.firstNotDerived with | some p => p.1 ++ "\t" ++ p.2 | none => "NONE"))
#eval Materials.kindCounts.forM (fun k => IO.println ("KIND\t" ++ k.fst ++ "\t" ++ toString k.snd.fst ++ "\t" ++ toString k.snd.snd))
