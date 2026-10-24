import ChainTheory.ConditionUnions
import ChainTheory.ConditionUnionsV10
import ChainTheory.Data.D534501_TRDR
import ChainTheory.Data.D536716_SSFP
import ChainTheory.Discussion.Ch20
import ChainTheory.Fields.Ch06
import ChainTheory.Open
import ChainTheory.OpenResult
import ChainTheory.StandardModel.Ch12

namespace ChainTheory.Plan.P07.Ch1

abbrev plan_wall_517407_HDBD : Prop := ChainTheory.Discussion.Ch20.wall_517407_CMPT

abbrev plan_wall_517513_HFBD : Prop := ChainTheory.Discussion.Ch20.wall_517513_MASV

abbrev plan_wall_518314_HPEF : Prop := ChainTheory.Discussion.Ch20.wall_518314_HUBH

abbrev plan_wall_518339_MOAJ : Prop := ChainTheory.Discussion.Ch20.wall_518339_ADDV

abbrev plan_wall_518601_CMFP : Prop := ChainTheory.Discussion.Ch20.wall_518601_POWS

abbrev plan_wall_518727_HERG : Prop := ChainTheory.Discussion.Ch20.wall_518727_RULI

abbrev plan_wall_519086_MURR : Prop := ChainTheory.Discussion.Ch20.wall_519086_MULV

abbrev plan_wall_519112_RTBF : Prop := ChainTheory.Discussion.Ch20.wall_519112_STAZ

abbrev plan_wall_519345_HDKC : Prop := ChainTheory.Discussion.Ch20.wall_519345_RULJ

abbrev plan_wall_520274_HCSR : Prop := ChainTheory.Discussion.Ch20.wall_520274_CNTH

abbrev plan_wall_520431_DSML : Prop := ChainTheory.Discussion.Ch20.wall_520431_LADE

abbrev plan_520483_JRPU : Prop := ChainTheory.StandardModel.Ch12.row_520483_JRPU

abbrev plan_520535_REBF : Prop := ChainTheory.StandardModel.Ch12.row_520535_REBF

abbrev plan_520561_CMSQ : Prop := ChainTheory.StandardModel.Ch12.row_520561_CMSQ

abbrev plan_wall_520766_HRSP : Prop := ChainTheory.Discussion.Ch20.wall_520766_CNTY

abbrev plan_521732_RNDL : Prop := ChainTheory.StandardModel.Ch12.row_521732_RNDL

abbrev plan_wall_521835_HDSR : Prop := ChainTheory.StandardModel.Ch12.wall_521835_EQHC

abbrev plan_wall_521937_MUOT : Prop := ChainTheory.StandardModel.Ch12.wall_521937_UNJD

abbrev plan_wall_522115_HSDM : Prop := ChainTheory.StandardModel.Ch12.wall_522115_EQHD

abbrev plan_wall_522448_MUCS : Prop := ChainTheory.StandardModel.Ch12.wall_522448_EQMU

abbrev plan_522656_HDIE : Prop := ChainTheory.StandardModel.Ch12.row_522656_HDIE

abbrev plan_523074_RRFC : Prop := ChainTheory.StandardModel.Ch12.row_523074_RRFC

abbrev plan_523668_OFCS : Prop := ChainTheory.StandardModel.Ch12.row_523668_OFCS

def plan_wall_524587_ORCB_open : ChainTheory.OpenResult := ChainTheory.StandardModel.Ch12.wall_524587_EQOS_open

theorem plan_524722_MOTC : type_of% ChainTheory.StandardModel.Ch12.row_524722_MOTC := ChainTheory.StandardModel.Ch12.row_524722_MOTC

theorem plan_524826_DHLP : type_of% ChainTheory.StandardModel.Ch12.row_524826_DHLP := ChainTheory.StandardModel.Ch12.row_524826_DHLP

theorem plan_525464_MDTS : type_of% ChainTheory.StandardModel.Ch12.row_525464_MDTS := ChainTheory.StandardModel.Ch12.row_525464_MDTS

theorem plan_526310_FPAR : type_of% ChainTheory.StandardModel.Ch12.row_526310_FPAR := ChainTheory.StandardModel.Ch12.row_526310_FPAR

theorem plan_526513_MPJW : type_of% ChainTheory.StandardModel.Ch12.row_526513_MPJW := ChainTheory.StandardModel.Ch12.row_526513_MPJW

def plan_wall_528529_ODFX_open : ChainTheory.OpenResult := ChainTheory.Fields.Ch06.wall_528529_EQOD_open

def plan_wall_532550_DRDS_open : ChainTheory.OpenResult := ChainTheory.StandardModel.Ch12.wall_532550_EQEA_open

def wall_532783_DRPF_open : ChainTheory.OpenResult :=
  { address := 532783, stem := "DRPF", decidingClass := "-", firstParting := "FIRST-HUB-PARTING-NAMED", chapter := "7-1", statement := ChainTheory.Open.wall_532783_DRPF }

theorem row_534501_TRDR : ChainTheory.Open.cond_534501_TRDR -> type_of% ChainTheory.Data.D534501_TRDR.checks :=
  fun _ => ChainTheory.Data.D534501_TRDR.checks

theorem row_536716_SSFP : type_of% ChainTheory.Data.D536716_SSFP.checks := ChainTheory.Data.D536716_SSFP.checks

end ChainTheory.Plan.P07.Ch1
