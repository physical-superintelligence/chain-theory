import ChainTheory.ConditionUnions
import ChainTheory.ConditionUnionsV10
import ChainTheory.Data.D534449_SPM2
import ChainTheory.Foundations.Ch03
import ChainTheory.Foundations.Measurement
import ChainTheory.Open
import ChainTheory.OpenResult
import ChainTheory.StandardModel.Ch12

namespace ChainTheory.Plan.P01.Ch6

theorem plan_526019_WAMR : type_of% ChainTheory.Foundations.Measurement.row_526019_WAMR := ChainTheory.Foundations.Measurement.row_526019_WAMR

theorem plan_527964_MWSP : type_of% ChainTheory.Foundations.Measurement.row_527964_MWSP := ChainTheory.Foundations.Measurement.row_527964_MWSP

def plan_wall_529407_MUSP_open : ChainTheory.OpenResult := ChainTheory.StandardModel.Ch12.wall_529407_EQMF_open

def plan_wall_529937_MUPH_open : ChainTheory.OpenResult := ChainTheory.StandardModel.Ch12.wall_529937_EQMP_open

def plan_wall_531133_DIMC_open : ChainTheory.OpenResult := ChainTheory.Foundations.Ch03.wall_531133_EQDU_open

def plan_wall_531159_GPRR_open : ChainTheory.OpenResult := ChainTheory.StandardModel.Ch12.wall_531159_EQRH_open

opaque row_533520_CLS2 : Prop

theorem row_534449_SPM2 : ChainTheory.Open.cond_534449_SPM2 -> type_of% ChainTheory.Data.D534449_SPM2.checks :=
  fun _ => ChainTheory.Data.D534449_SPM2.checks

def wall_534793_LASC_open : ChainTheory.OpenResult :=
  { address := 534793, stem := "LASC", decidingClass := "EQEM", firstParting := "FIRST-PARTING-NAMED", chapter := "1-6", statement := ChainTheory.Open.wall_534793_LASC }

def wall_534954_DCPL_open : ChainTheory.OpenResult :=
  { address := 534954, stem := "DCPL", decidingClass := "EQIC", firstParting := "COUPLED", chapter := "1-6", statement := ChainTheory.Open.wall_534954_DCPL }

def wall_535118_EMWP_open : ChainTheory.OpenResult :=
  { address := 535118, stem := "EMWP", decidingClass := "EQQA", firstParting := "PARTING", chapter := "1-6", statement := ChainTheory.Open.wall_535118_EMWP }

def wall_536293_RBAC_open : ChainTheory.OpenResult :=
  { address := 536293, stem := "RBAC", decidingClass := "EQUP", firstParting := "CLAUSE-NAMED", chapter := "1-6", statement := ChainTheory.Open.wall_536293_RBAC }

end ChainTheory.Plan.P01.Ch6
