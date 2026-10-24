import ChainTheory.ConditionUnions
import ChainTheory.ConditionUnionsNinth
import ChainTheory.Data.D539285_TFLR
import ChainTheory.Data.D539543_MPRT
import ChainTheory.Open
import ChainTheory.Open.Ninth
import ChainTheory.OpenResult

namespace ChainTheory.FrameNinth.P06.Ch2a

theorem row_539285_TFLR : ChainTheory.Open.cond_539285_TFLR -> type_of% ChainTheory.Data.D539285_TFLR.checks :=
  fun _ => ChainTheory.Data.D539285_TFLR.checks

def wall_539311_TFCS_open : ChainTheory.OpenResult :=
  { address := 539311, stem := "TFCS", decidingClass := "EQVX", firstParting := "FACE-B-NAMED", chapter := "6-2a", statement := ChainTheory.Open.wall_539311_TFCS }

theorem row_539543_MPRT : ChainTheory.Open.cond_539543_MPRT -> type_of% ChainTheory.Data.D539543_MPRT.checks :=
  fun _ => ChainTheory.Data.D539543_MPRT.checks

end ChainTheory.FrameNinth.P06.Ch2a
