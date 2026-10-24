import ActClosure.Words
import AxiomDeclarationTwo.Acts

set_option autoImplicit false
set_option maxRecDepth 100000

namespace AxiomDeclarationTwo
open ActClosure (Web WordRow RunState stepWord wordsOfRecord aheadWebs)

def runStatesGo : List (String × String × String) → RunState → List WorldTwo → Option (List WorldTwo)
  | [], st, acc => (webToWorldTwo? st.web).map (fun v => acc ++ [v])
  | app :: rest, st, acc =>
    match webToWorldTwo? st.web, stepWord st app with
    | some v, some st' => runStatesGo rest st' (acc ++ [v])
    | _, _ => none

def wordStatesTwo (r : WordRow) : Option (List WorldTwo) := runStatesGo r.applications ⟨r.ahead.toWeb, r.ahead.labels, r.fresh⟩ []

def wordAtTwo (r : WordRow) : Bool := (wordStatesTwo r).isSome

def wordStatesAtTwo (r : WordRow) : Nat × Nat :=
  match wordStatesTwo r with
  | none => (0, r.applications.length + 1)
  | some ws => (ws.length, r.applications.length + 1)

def wordsAtTwo : List (String × Bool) := wordsOfRecord.map (fun r => (r.id, wordAtTwo r))

def wordsStatesAtTwo : List (String × Nat × Nat) := wordsOfRecord.map (fun r => (r.id, wordStatesAtTwo r))

def firstWordNotAtTwo : String := ((wordsOfRecord.find? (fun r => !(wordAtTwo r))).map (fun r => r.id)).getD "NONE"

def worldsTwoAmongAhead : Nat := (aheadWebs.filterMap webToWorldTwo?).length

def firstEditionAmongAhead : Nat × Nat := ((aheadWebs.filter Web.isWorld).length, worldsTwoAmongAhead)

end AxiomDeclarationTwo
