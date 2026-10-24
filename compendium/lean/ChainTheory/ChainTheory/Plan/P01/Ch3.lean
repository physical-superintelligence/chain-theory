import ChainTheory.ConditionUnions
import ChainTheory.ConditionUnionsV10
import ChainTheory.Data.D535091_HGDN
import ChainTheory.Data.D535521_PRCI
import ChainTheory.Discussion.Ch20
import ChainTheory.Fields.Ch07
import ChainTheory.Foundations.Ch02
import ChainTheory.Open
import ChainTheory.OpenResult
import ChainTheory.StandardModel.Ch10
import ChainTheory.StandardModel.Ch12

namespace ChainTheory.Plan.P01.Ch3

abbrev plan_504521_RSBD : Prop := ChainTheory.StandardModel.Ch10.row_504521_RSBD

abbrev plan_515736_BCHR : Prop := ChainTheory.StandardModel.Ch12.row_515736_BCHR

abbrev plan_wall_517250_RLAP : Prop := ChainTheory.Discussion.Ch20.wall_517250_CMPT

abbrev plan_518778_GPTT : Prop := ChainTheory.StandardModel.Ch10.row_518778_GPTT

abbrev plan_wall_519574_GORN : Prop := ChainTheory.Discussion.Ch20.wall_519574_GAIP

abbrev plan_wall_519857_GIWO : Prop := ChainTheory.Discussion.Ch20.wall_519857_GAIQ

theorem plan_520119_GWDC : type_of% ChainTheory.StandardModel.Ch10.row_520119_GWDC := ChainTheory.StandardModel.Ch10.row_520119_GWDC

theorem plan_525646_RTSE : type_of% ChainTheory.Fields.Ch07.row_525646_RTSE := ChainTheory.Fields.Ch07.row_525646_RTSE

def plan_wall_529127_MIDS_open : ChainTheory.OpenResult := ChainTheory.Fields.Ch07.wall_529127_EQSV_open

def plan_wall_530222_BMEQ_open : ChainTheory.OpenResult := ChainTheory.Foundations.Ch02.wall_530222_EQBM_open

theorem plan_531081_GPOE : type_of% ChainTheory.Fields.Ch07.row_531081_GPOE := ChainTheory.Fields.Ch07.row_531081_GPOE

def wall_532757_DRLR_open : ChainTheory.OpenResult :=
  { address := 532757, stem := "DRLR", decidingClass := "EQRM", firstParting := "FIRST-PARTING-NAMED", chapter := "1-3", statement := ChainTheory.Open.wall_532757_DRLR }

def wall_533177_FSO2_open : ChainTheory.OpenResult :=
  { address := 533177, stem := "FSO2", decidingClass := "EQFZ", firstParting := "UNDISCHARGED", chapter := "1-3", statement := ChainTheory.Open.wall_533177_FSO2 }

def wall_533392_RDLW_open : ChainTheory.OpenResult :=
  { address := 533392, stem := "RDLW", decidingClass := "EQTG", firstParting := "PARTING", chapter := "1-3", statement := ChainTheory.Open.wall_533392_RDLW }

def wall_534317_RSWL_open : ChainTheory.OpenResult :=
  { address := 534317, stem := "RSWL", decidingClass := "EQTW", firstParting := "NONE-NAMED", chapter := "1-3", statement := ChainTheory.Open.wall_534317_RSWL }

def wall_534475_RSLW_open : ChainTheory.OpenResult :=
  { address := 534475, stem := "RSLW", decidingClass := "EQUL", firstParting := "PARTING-NAMED", chapter := "1-3", statement := ChainTheory.Open.wall_534475_RSLW }

def wall_534528_WSOR_open : ChainTheory.OpenResult :=
  { address := 534528, stem := "WSOR", decidingClass := "EQOZ", firstParting := "PARTING", chapter := "1-3", statement := ChainTheory.Open.wall_534528_WSOR }

def wall_534981_SFTP_open : ChainTheory.OpenResult :=
  { address := 534981, stem := "SFTP", decidingClass := "EQUF", firstParting := "FACE-B", chapter := "1-3", statement := ChainTheory.Open.wall_534981_SFTP }

theorem row_535091_HGDN : ChainTheory.Open.cond_535091_HGDN -> type_of% ChainTheory.Data.D535091_HGDN.checks :=
  fun _ => ChainTheory.Data.D535091_HGDN.checks

theorem row_535521_PRCI : ChainTheory.Open.cond_535521_PRCI -> type_of% ChainTheory.Data.D535521_PRCI.checks :=
  fun _ => ChainTheory.Data.D535521_PRCI.checks

def wall_535732_RDWP_open : ChainTheory.OpenResult :=
  { address := 535732, stem := "RDWP", decidingClass := "EQUE", firstParting := "PARTING-AT-THE-RULE", chapter := "1-3", statement := ChainTheory.Open.wall_535732_RDWP }

def wall_535866_RSAC_open : ChainTheory.OpenResult :=
  { address := 535866, stem := "RSAC", decidingClass := "EQUG", firstParting := "PARTING-AT-THE-STOP", chapter := "1-3", statement := ChainTheory.Open.wall_535866_RSAC }

def wall_535921_ABRC_open : ChainTheory.OpenResult :=
  { address := 535921, stem := "ABRC", decidingClass := "EQAE", firstParting := "TRIVIAL", chapter := "1-3", statement := ChainTheory.Open.wall_535921_ABRC }

end ChainTheory.Plan.P01.Ch3
