import ActClosure.Web
import ActClosure.Structure
import ActClosure.Data.Words

set_option autoImplicit false
set_option maxRecDepth 100000

namespace ActClosure

def idxOf (ls : List String) (s : String) : Nat := (ls.findIdx? (fun l => l == s)).getD ls.length

def LabelledWeb.toWeb (l : LabelledWeb) : Web := ⟨l.dims, l.links.map (fun k => (idxOf l.labels k.1, idxOf l.labels k.snd.fst))⟩

def actOf (label : String) : Option Act := actsOfRecord.find? (fun a => a.label == label)

def freshDim (a : Act) (w : Web) (x : Nat) : Nat := if w.dimOf x == a.genre.1 then a.genre.2 else a.genre.1

structure RunState where
  web : Web
  labels : List String
  fresh : List String
  deriving Repr, BEq

def stepWord (st : RunState) (app : String × String × String) : Option RunState :=
  match actOf app.1 with
  | none => none
  | some a =>
    let x := idxOf st.labels app.snd.fst
    let y := match a.kind, a.dir with
      | .attach, .forward => freshDim a st.web x
      | _, _ => if app.snd.snd == "" then 0 else idxOf st.labels app.snd.snd
    match a.apply st.web x y with
    | none => none
    | some v =>
      let nl := st.fresh.headD ("f" ++ toString st.web.sites)
      match a.kind, a.dir with
      | .attach, .forward => some ⟨v, st.labels ++ [nl], st.fresh.drop 1⟩
      | .attach, .inverse => some ⟨v, st.labels.eraseIdx y, st.fresh⟩
      | .hubForm, .forward => some ⟨v, (st.labels.set x nl).eraseIdx y, st.fresh.drop 1⟩
      | .hubForm, .inverse => some ⟨v, st.labels ++ [nl], st.fresh.drop 1⟩
      | _, _ => some ⟨v, st.labels, st.fresh⟩

def runSteps : List (String × String × String) → Option RunState → Option RunState
  | [], st => st
  | app :: rest, st => runSteps rest (st.bind (fun s => stepWord s app))

def runWord (r : WordRow) : Option Web :=
  (runSteps r.applications (some ⟨r.ahead.toWeb, r.ahead.labels, r.fresh⟩)).map (fun s => s.web)

def admittedSteps (r : WordRow) : Nat :=
  let rec go : List (String × String × String) → Option RunState → Nat → Nat
    | [], _, n => n
    | app :: rest, st, n => match st.bind (fun s => stepWord s app) with
      | none => n
      | some s' => go rest (some s') (n + 1)
  go r.applications (some ⟨r.ahead.toWeb, r.ahead.labels, r.fresh⟩) 0

def wordCanonical (r : WordRow) : Bool := match runWord r with
  | none => false
  | some v => v.canonEq r.made.toWeb

def wordsCanonical : List (String × Bool) := wordsOfRecord.map (fun r => (r.id, wordCanonical r))

def intermediatesAdmitted : List (String × Nat × Nat) := wordsOfRecord.map (fun r => (r.id, admittedSteps r, r.applications.length))

def wordAtStructure (r : WordRow) : Bool :=
  r.ahead.toWeb.isWorld && (match runWord r with | none => false | some v => v.isWorld)

def worldsAmongAhead : Nat := (wordsOfRecord.filter (fun r => r.ahead.toWeb.isWorld)).length

def wordsAtStructure : List (String × Bool) := wordsOfRecord.map (fun r => (r.id, wordAtStructure r))

def aheadWebs : List Web := wordsOfRecord.map (fun r => r.ahead.toWeb)

end ActClosure
