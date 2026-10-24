import ChainTheory.ConditionUnions
import ChainTheory.ConditionUnionsEighth
import ChainTheory.ConditionUnionsV10
import ChainTheory.Data.D538865_NCZR
import ChainTheory.Open
import ChainTheory.Open.Eighth
import ChainTheory.OpenResult

namespace ChainTheory.Frame.P06.Ch4

theorem row_538865_NCZR : ChainTheory.Open.cond_538865_NCZR -> type_of% ChainTheory.Data.D538865_NCZR.checks :=
  fun _ => ChainTheory.Data.D538865_NCZR.checks

def wall_538994_CCHS_open : ChainTheory.OpenResult :=
  { address := 538994, stem := "CCHS", decidingClass := "EQCC", firstParting := "SINK-PARTING-NAMED", chapter := "6-4", statement := ChainTheory.Open.wall_538994_CCHS }

end ChainTheory.Frame.P06.Ch4
