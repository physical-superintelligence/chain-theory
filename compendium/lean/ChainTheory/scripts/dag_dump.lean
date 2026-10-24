import Lean
import ChainTheory
open Lean

def kindWord : ConstantInfo -> String
  | .thmInfo _ => "theorem"
  | .opaqueInfo _ => "opaque"
  | .defnInfo _ => "def"
  | .axiomInfo _ => "axiom"
  | .inductInfo _ => "inductive"
  | .ctorInfo _ => "ctor"
  | .recInfo _ => "rec"
  | .quotInfo _ => "quot"

def inPkg (n : Name) : Bool := (`ChainTheory).isPrefixOf n || (`AlphaDerivation).isPrefixOf n

def main : IO Unit := do
  initSearchPath (<- findSysroot)
  let env <- importModules #[{module := `ChainTheory}] {} 0
  let mut lines : Array String := #[]
  for (n, ci) in env.constants.toList do
    if inPkg n && !n.isInternal then
      let deps := (ci.type.getUsedConstants ++ (match ci.value? with | some v => v.getUsedConstants | none => #[])).filter (fun d => inPkg d && d != n && !d.isInternal)
      let ds := (deps.toList.eraseDups.map toString)
      lines := lines.push s!"{n}\t{kindWord ci}\t{String.intercalate ";" ds}"
  for l in lines.qsort (fun a b => a < b) do IO.println l

#eval main
