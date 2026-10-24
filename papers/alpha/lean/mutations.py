"""Perturb the definitions of ChainAlpha.lean one at a time and re-check the main statement.

Runs Parts 0 and 1 of the file with each perturbation, the statement of the main theorem and the
parity part of `commutator_records`, each by decide +kernel, and prints which are still proved and
what the readout becomes.
Usage: LEAN=/path/to/lean python3 mutations.py [name ...]   (about two seconds per case)
"""
import subprocess, sys, os
import pathlib
HERE=pathlib.Path(__file__).resolve().parent
src=(HERE/'ChainAlpha.lean').read_text().split('\n')
cut=next(i for i,l in enumerate(src) if l.startswith('/-! ## 1.9'))
base='\n'.join(src[:cut])
tail='''
theorem mainT :
    TwoPoint.valid objectWorld objectTwoPoint = true ∧
    fixesFar (objectWorld.dim objectTwoPoint.center) (objectWorld.dim objectTwoPoint.read1.2) = true ∧
    fixesFar (objectWorld.dim objectTwoPoint.read1.2) (objectWorld.dim objectTwoPoint.center) = false ∧
    (records (readEnd (objectWorld.dim objectTwoPoint.center) (objectWorld.dim objectTwoPoint.read1.2))
        (farEnd (objectWorld.dim objectTwoPoint.center) (objectWorld.dim objectTwoPoint.read1.2))).all
      (fun f => neZ (parity f)) = true ∧
    readout objectWorld objectTwoPoint = ([(1, 79), (2, 48), (3, 42), (6, 3)], 31104) := by
  decide +kernel
theorem commT : (commutatorRecords 3 2).all (fun f => eqZ (parity f) (-1)) = true := by decide +kernel
#eval readout objectWorld objectTwoPoint
end ChainAlpha
'''
KX='  (if eqZ (sigX r) (-1) then x else 1) * (if eqZ (sigY t r) (-1) then wY w t r else 1)'
M={
 'BASE':[],
 'fixesFar_always_true':[('def fixesFar (dA dB : Nat) : Bool := rank ((List.range dA).map (steered dA dB)) == dB','def fixesFar (dA dB : Nat) : Bool := true')],
 'reads_at_qubit':[('def readEnd (dA dB : Nat) : Nat := if fixesFar dA dB then dA else dB','def readEnd (dA dB : Nat) : Nat := if fixesFar dA dB then dB else dA'),('def farEnd (dA dB : Nat) : Nat := if fixesFar dA dB then dB else dA','def farEnd (dA dB : Nat) : Nat := if fixesFar dA dB then dA else dB')],
 'X_at_far_end':[('def wX (dA dB : Nat) : Nat := readEnd dA dB','def wX (dA dB : Nat) : Nat := farEnd dA dB')],
 'X_where_letters_sit':[(KX,"  (if eqZ (sigX r) (-1) then (if (letterSlots (r.form.headD (0, [])).2).all (fun s => slotEnd s == 1) then 2 else x) else 1) * (if eqZ (sigY t r) (-1) then wY w t r else 1)")],
 'Y_at_center':[('    | s :: _ => w.dim (slotQudit t s)','    | _ :: _ => w.dim t.center')],
 'X_Y_factors_swapped':[(KX,"  (if eqZ (sigX r) (-1) then 2 else 1) * (if eqZ (sigY t r) (-1) then x else 1)")],
 'moved_per_letter':[('  | (_, a) :: _ => !(sameSet ((occupies t a).map (linkSwap t)) (occupies t a))','  | (_, a) :: _ => (occupies t a).any (fun q => linkSwap t q != q)')],
 'copies_separate':[('  if slotEnd s = 0 then t.center else if s / 2 = 0 then t.read1.2 else t.read2.2','  if slotEnd s = 0 then 100 + s / 2 else if s / 2 = 0 then t.read1.2 else t.read2.2'),('  if q = t.read1.2 then t.read2.2 else if q = t.read2.2 then t.read1.2','  if q = 100 then 101 else if q = 101 then 100 else if q = t.read1.2 then t.read2.2 else if q = t.read2.2 then t.read1.2'),('  dim := fun q => if q = 0 then 3 else 2','  dim := fun q => if q = 0 ∨ 100 ≤ q then 3 else 2')],
 'survival_ignores_own_sign':[('  | some g => sameForm g (r.form.map (fun u => (r.sign * u.1, u.2)))','  | some g => sameForm g r.form')],
 'commutator_records_carry_no_reads':[('some ⟨fg.1, orderSign dB, some fg.2⟩','some ⟨fg.1, orderSign dB, none⟩')],
 'register_full_unread':[('else (d1 * d1 - 1) * (d2 * d2 - 1))','else (d1 * d2) * (d1 * d2))')],
 'no_commutator_records':[('  if weylIsSign dB then\n    let nb := (slotBasis dA dB 1).length','  if false then\n    let nb := (slotBasis dA dB 1).length')],
 'commutators_keep_sums':[('if eqZ (parity fg.1) (orderSign dB) then','if eqZ (parity fg.1) (-orderSign dB) then')],
 'commutators_keep_both':[('if eqZ (parity fg.1) (orderSign dB) then','if true then')],
 'exch_shift1':[('def exch (s : Nat) : Nat := (s + 2) % 4','def exch (s : Nat) : Nat := (s + 1) % 4')],
 'drop_fixed':[('  odd ++ even ++ fixedP ++ commutatorRecs dA dB','  odd ++ even ++ commutatorRecs dA dB')],
 'drop_even':[('  odd ++ even ++ fixedP ++ commutatorRecs dA dB','  odd ++ fixedP ++ commutatorRecs dA dB')],
 'born_weights':[('addRoot (kOf (wX dc df) w t r) acc','addRoot (kOf (wX dc df) w t r * kOf (wX dc df) w t r) acc')],
 'wX_dA_equiv':[('def wX (dA dB : Nat) : Nat := readEnd dA dB','def wX (dA dB : Nat) : Nat := dA')],
}
L=os.environ.get('LEAN','lean')
names=sys.argv[1:] or list(M)
import tempfile
tmp=pathlib.Path(tempfile.mkdtemp())
for name in names:
  s=base
  for o,n in M[name]:
    assert o in s,(name,o)
    s=s.replace(o,n,1)
  f=tmp/(name+'.lean'); f.write_text(s+tail)
  r=subprocess.run([L,str(f)],capture_output=True,text=True,timeout=900)
  out=r.stdout+r.stderr
  ev=[l for l in out.split('\n') if l.startswith('([')]
  lines=(s+tail).split('\n')
  lm=next(i for i,l in enumerate(lines) if l.startswith('theorem mainT'))+1
  lc=next(i for i,l in enumerate(lines) if l.startswith('theorem commT'))+1
  import re
  errs=[int(m.group(1)) for m in re.finditer(r':(\d+):\d+: error',out)]
  if any(e<lm for e in errs):
    print(f"{name:24s} the perturbed definitions do not compile"); continue
  mainOK=not any(lm<=e<lc for e in errs)
  commOK=not any(e>=lc for e in errs)
  print(f"{name:24s} main {'proved' if mainOK else 'FAILS '}  commutators {'proved' if commOK else 'FAILS '}  readout {ev[0] if ev else '?'}")

