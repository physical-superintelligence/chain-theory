import AlphaDerivation
import ChainTheory.Data.D528101_ATSR
import ChainTheory.OpenResult
import ChainTheory.ConditionUnions
import ChainTheory.Data.D529015_YOGC

set_option maxRecDepth 100000

namespace ChainTheory.Foundations.Ch04

inductive Move where
  | dup
  | del
  | sub
  | mir
deriving DecidableEq, Repr

def act : Move -> Prod Int Int -> Prod Int Int
  | .dup, (v, e) => (v, e + 1)
  | .del, (v, e) => (v, e - 1)
  | .sub, (v, e) => (v + 1, e + 1)
  | .mir, (v, e) => (v, e)

def run : List Move -> Prod Int Int -> Prod Int Int
  | [], x => x
  | m :: w, x => run w (act m x)

def subCount : List Move -> Int
  | [] => 0
  | .sub :: w => subCount w + 1
  | _ :: w => subCount w

def inv : Move -> Move
  | .dup => .del
  | .del => .dup
  | .sub => .sub
  | .mir => .mir

def reverseWord (w : List Move) : List Move := (w.map inv).reverse

theorem run_append (u v : List Move) (x : Prod Int Int) : run (u ++ v) x = run v (run u x) := by
  induction u generalizing x with
  | nil => rfl
  | cons m u ih => simp only [List.cons_append, run]; exact ih (act m x)

theorem run_vertex : forall (w : List Move) (x : Prod Int Int), (run w x).1 = x.1 + subCount w := by
  intro w
  induction w with
  | nil => intro x; simp [run, subCount]
  | cons m w ih =>
    intro x
    cases m <;> simp only [run, subCount, act] <;> rw [ih] <;> omega

theorem subCount_nonneg : forall w : List Move, 0 <= subCount w := by
  intro w
  induction w with
  | nil => simp [subCount]
  | cons m w ih => cases m <;> simp only [subCount] <;> omega

theorem act_inv_act : forall (m : Move) (x : Prod Int Int), Not (m = .sub) -> act (inv m) (act m x) = x := by
  intro m x h
  cases m with
  | sub => exact absurd rfl h
  | dup => simp [act, inv]
  | del => simp [act, inv]
  | mir => simp [act, inv]

theorem subCount_zero_free : forall (w : List Move), subCount w = 0 -> forall m, m ∈ w -> Not (m = .sub) := by
  intro w
  induction w with
  | nil => intro _ m hm; exact absurd hm (List.not_mem_nil)
  | cons a w ih =>
    intro h0 m hm
    have hs := subCount_nonneg w
    cases a with
    | sub => simp only [subCount] at h0; omega
    | dup => simp only [subCount] at h0; cases hm with | head => simp | tail _ hm => exact ih h0 m hm
    | del => simp only [subCount] at h0; cases hm with | head => simp | tail _ hm => exact ih h0 m hm
    | mir => simp only [subCount] at h0; cases hm with | head => simp | tail _ hm => exact ih h0 m hm

theorem run_reverse : forall (w : List Move) (x : Prod Int Int), subCount w = 0 -> run (reverseWord w) (run w x) = x := by
  intro w
  induction w with
  | nil => intro x _; rfl
  | cons a w ih =>
    intro x h0
    have hfree := subCount_zero_free (a :: w) h0
    have hw : subCount w = 0 := by
      have hs := subCount_nonneg w
      cases a <;> simp only [subCount] at h0 <;> omega
    have ha : Not (a = .sub) := hfree a (List.mem_cons_self)
    simp only [reverseWord, List.map, List.reverse_cons, run]
    rw [run_append]
    simp only [run]
    have := ih (act a x) hw
    simp only [reverseWord] at this
    rw [this]
    exact act_inv_act a x ha

theorem Theorem_6 :
    (forall (w : List Move) (x : Prod Int Int), (run w x).1 = x.1 + subCount w /\ 0 <= subCount w) /\
    (forall (w : List Move) (x : Prod Int Int), (run w x).1 > x.1 -> forall w' : List Move, Not (run w' (run w x) = x)) /\
    (forall (w : List Move) (x : Prod Int Int), (run w x).1 = x.1 -> subCount w = 0 /\ run (reverseWord w) (run w x) = x) /\
    (forall (w : List Move) (x : Prod Int Int), (forall w' : List Move, Not (run w' (run w x) = x)) <-> (run w x).1 > x.1) := by
  refine And.intro ?_ (And.intro ?_ (And.intro ?_ ?_))
  · intro w x; exact And.intro (run_vertex w x) (subCount_nonneg w)
  · intro w x hgt w' hret
    have h1 := run_vertex w' (run w x)
    have h2 := subCount_nonneg w'
    rw [hret] at h1
    omega
  · intro w x heq
    have h1 := run_vertex w x
    have h0 : subCount w = 0 := by omega
    exact And.intro h0 (run_reverse w x h0)
  · intro w x
    constructor
    · intro hno
      have h1 := run_vertex w x
      have h2 := subCount_nonneg w
      by_cases hgt : (run w x).1 > x.1
      · exact hgt
      · exfalso
        have heq : (run w x).1 = x.1 := by omega
        have h0 : subCount w = 0 := by omega
        exact hno (reverseWord w) (run_reverse w x h0)
    · intro hgt w' hret
      have h1 := run_vertex w' (run w x)
      have h2 := subCount_nonneg w'
      rw [hret] at h1
      omega

opaque Proposition_7 : Prop

opaque row_515605_DAPL : Prop

opaque row_515658_ARPH : Prop

opaque row_515945_ATDM : Prop

opaque row_518752_SDLN : Prop

opaque row_518804_COLK : Prop

opaque row_520405_OADA : Prop

opaque row_521963_EFPO : Prop

opaque row_522371_BCCF : Prop

end ChainTheory.Foundations.Ch04

namespace ChainTheory.Foundations.Ch04

opaque wall_527508_EQSH : Prop

def wall_527508_EQSH_open : ChainTheory.OpenResult :=
  { address := 527508, stem := "TEPS", decidingClass := "EQSH", firstParting := "-", chapter := "ch04", statement := wall_527508_EQSH }

opaque wall_527804_TSQA : Prop

def wall_527804_TSQA_open : ChainTheory.OpenResult :=
  { address := 527804, stem := "TSQA", decidingClass := "-", firstParting := "-", chapter := "ch04", statement := wall_527804_TSQA }

opaque wall_528018_EQSU : Prop

def wall_528018_EQSU_open : ChainTheory.OpenResult :=
  { address := 528018, stem := "SGOP", decidingClass := "EQSU", firstParting := "-", chapter := "ch04", statement := wall_528018_EQSU }

theorem row_528101_ATSR : type_of% ChainTheory.Data.D528101_ATSR.checks :=
  ChainTheory.Data.D528101_ATSR.checks

end ChainTheory.Foundations.Ch04

namespace ChainTheory.Foundations.Ch04

opaque cond_529015_YOGC : Prop

theorem row_529015_YOGC : cond_529015_YOGC -> type_of% ChainTheory.Data.D529015_YOGC.checks :=
  fun _ => ChainTheory.Data.D529015_YOGC.checks

theorem row_529015_YOGC_union_census : ChainTheory.ConditionUnions.union_529015_YOGC.members.length = 5 /\ ChainTheory.ConditionUnions.union_529015_YOGC.exceedsLetter = true := by decide

opaque wall_532315_EQML : Prop

def wall_532315_EQML_open : ChainTheory.OpenResult :=
  { address := 532315, stem := "MDE2", decidingClass := "EQML", firstParting := "-", chapter := "ch04", statement := wall_532315_EQML }

end ChainTheory.Foundations.Ch04
