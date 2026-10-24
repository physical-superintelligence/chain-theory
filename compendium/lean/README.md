# The compendium Lean packages

Six core-only Lean 4.32.1 packages, side by side. Each requires the next by a relative path:

| Package | What it holds |
|---|---|
| `AxiomDeclaration` | the axiom and its definitions as a Lean structure (first form) |
| `ActClosure` | the acts of the distilling closure as a rule over that structure |
| `AxiomDeclarationTwo` | the axiom's structure of record, with shared systems |
| `ActClosureCapFree` | the act closure without the read cap |
| `KernelDerivationC` | the constructions from which three of the compendium's tables are derived inside the kernel (the modules under `ChainTheory/Kernel`) |
| `ChainTheory` | one module per chapter of the compendium, its data modules, the open results as opaque propositions, and `AlphaDerivation`, the library of an earlier derivation of the alpha result, which 29 chapter modules import. The Letter's single file in [`papers/alpha/lean`](../../papers/alpha/lean) supersedes `AlphaDerivation` as the check of that result |

```
cd ChainTheory
lake build                      # 493 modules; several AlphaDerivation modules need more than 8 GB of memory
lake env lean AxiomsCheck.lean  # the axioms of every public declaration
cd ../ActClosureCapFree && lake build   # this package is required by ChainTheory but not imported by it
```

This copy was built here module by module: all 493 modules of `lake build` in `ChainTheory` compile, with no `sorry`. [`build_record.tsv`](build_record.tsv) gives each module's time and peak memory, and [`ChainTheory/axioms_report.txt`](ChainTheory/axioms_report.txt) is the output of `AxiomsCheck.lean`: of 6,662 declarations, 6,047 depend on no axiom, 605 on `propext` alone and 10 on `propext` and `Quot.sound`.

`compendium/index/` maps every chapter of the compendium to its declarations. See [`../README.md`](../README.md) for what the checks establish. Comments and doc comments have been removed from the original sources (`../tools/strip_lean.py`), descriptive text inside some string literals has been reworded (together with the few checks that quote it), and three bookkeeping modules that recorded the history of the index rather than any result have been removed. No proof of a remaining declaration was changed.
