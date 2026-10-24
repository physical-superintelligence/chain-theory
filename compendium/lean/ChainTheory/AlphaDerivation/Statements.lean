import AlphaDerivation.Proofs.LemmaA
import AlphaDerivation.Proofs.Generation
import AlphaDerivation.Proofs.CollapseG1
import AlphaDerivation.Proofs.CollapseG2
import AlphaDerivation.Proofs.CollapseG3
import AlphaDerivation.Proofs.CollapseD2
import AlphaDerivation.Proofs.Span
import AlphaDerivation.Proofs.SpanRank
import AlphaDerivation.Proofs.Theorem0
import AlphaDerivation.Proofs.IdentificationAlgebra
import AlphaDerivation.Proofs.ClosureSign
import AlphaDerivation.Proofs.Theorem1
import AlphaDerivation.Proofs.OrbitReading
import AlphaDerivation.Proofs.LemmaB
import AlphaDerivation.Proofs.Census
import AlphaDerivation.Proofs.Theorem4
import AlphaDerivation.Proofs.Theorem5
import AlphaDerivation.Proofs.MasslessOpenLink
import AlphaDerivation.Proofs.AdjointRotation
import AlphaDerivation.Proofs.TransverseStates
import AlphaDerivation.Proofs.MomentumTransfer
import AlphaDerivation.Proofs.Correspondence
import AlphaDerivation.Proofs.GainLemma
import AlphaDerivation.Proofs.OneLinkWord
import AlphaDerivation.Proofs.OneLinkWordAlpha

set_option maxRecDepth 100000

namespace AlphaDerivation
namespace Statements

open LemmaB in

theorem LemmaB_readable_and_acting :
    readableGenres = Expected.readableGenres ∧ readCap = Expected.readCap ∧
    readableGenres.filter abelian = Expected.actingGenres ∧
    [pairScalar (2, 2), pairScalar (2, 3)] = Expected.pairScalars :=
  LemmaB.readable_and_acting

open LemmaA GM in

theorem LemmaA_group_orders : groupOrder 2 = 32 ∧ groupOrder 3 = 384 ∧ groupOrder 4 = 6144 ∧
    group2.length = 32 ∧ group3.length = 384 :=
  LemmaA.group_orders

open LemmaA GM in

theorem LemmaA_orbit_census : (patterns4 2).length = 8 ∧ (patterns4 3).length = 14 ∧ (patterns4 4).length = 15 :=
  LemmaA.orbit_census

open Generation GM LemmaA in

theorem Generation_generation : generationCert 3 closure3 group3 384 = true ∧ generationCert 2 closure2 group2 32 = true :=
  Generation.generation

open Theorem0 GM LemmaA in

theorem Theorem0_fixed_vectors_one_line :
    fixedVectorPatterns 2 = [[0, 0]] ∧ fixedVectorPatterns 3 = [[0, 0]] ∧
    [(fixedVectorPatterns 2).length, (fixedVectorPatterns 3).length] = Expected.fixedVectorDims :=
  Theorem0.fixed_vectors_one_line

open Theorem0 GM LemmaA in

theorem Theorem0_pair_ket_fixed :
    fixedBy 2 (pairKet 2) group2 = true ∧ fixedBy 3 (pairKet 3) gens3 = true ∧
    annihilatedByLie 2 (pairKet 2) = true ∧ annihilatedByLie 3 (pairKet 3) = true ∧
    inner (pairKet 2) (pairKet 2) = G.ofInt 2 ∧ inner (pairKet 3) (pairKet 3) = G.ofInt 3 ∧
    [(1, 2), (1, 3)] = Expected.pairKetAmplitudeSq :=
  Theorem0.pair_ket_fixed

open Theorem0 GM LemmaA in

theorem Theorem0_pair_ket_unique_pure_fixed_point :
    haarTwoCommute 2 = true ∧ haarTwoCommute 3 = true ∧ diagFailsHaar 2 = true ∧ diagFailsHaar 3 = true ∧
    [(commutantPatterns 2).length - 1, (commutantPatterns 3).length - 1] = Expected.twirlFixedDims ∧
    pairProjectorIsOuter 2 = true ∧ pairProjectorIsOuter 3 = true ∧
    eigenFacts 2 = true ∧ eigenFacts 3 = true ∧
    [1, 1] = Expected.pureFixedStates :=
  Theorem0.pair_ket_unique_pure_fixed_point

open Theorem0 GM LemmaA in

theorem Theorem0_pure_fixed_unique (d N p q : Nat) (h : IsFixedState d N p q) (hp : IsPure p q) : p = N ∧ q = 0 :=
  Theorem0.pure_fixed_unique d N p q h hp

open Theorem0 GM LemmaA in

theorem Theorem0_pair_ket_extreme (d N p1 q1 p2 q2 : Nat) (h1 : IsFixedState d N p1 q1) (h2 : IsFixedState d N p2 q2)
    (_hp : p1 + p2 = N + N) (hq : q1 + q2 = 0) : p1 = N ∧ q1 = 0 ∧ p2 = N ∧ q2 = 0 :=
  Theorem0.pair_ket_extreme d N p1 q1 p2 q2 h1 h2 _hp hq

open Theorem0 GM LemmaA in

theorem Theorem0_minimal_projections_coordinates :
    (IsFixedState 2 3 3 0 ∧ IsFixedState 2 3 0 1 ∧ IsFixedState 3 8 8 0 ∧ IsFixedState 3 8 0 1) ∧
    (IsPure 3 0 ∧ ¬ IsPure 0 1 ∧ IsPure 8 0 ∧ ¬ IsPure 0 1) ∧ Expected.eigenspaceDims2 = "1,3" :=
  Theorem0.minimal_projections_coordinates

open LemmaA GM in

theorem LemmaA_commutant_three :
    commutantPatterns 2 = [[0, 0, 0, 0], [0, 0, 1, 1], [0, 1, 0, 1]] ∧
    commutantPatterns 3 = [[0, 0, 0, 0], [0, 0, 1, 1], [0, 1, 0, 1]] ∧
    commutantPatterns 4 = [[0, 0, 0, 0], [0, 0, 1, 1], [0, 1, 0, 1]] ∧
    (patterns4 2).length - (commutantPatterns 2).length = 5 ∧
    (patterns4 3).length - (commutantPatterns 3).length = 11 ∧
    (patterns4 4).length - (commutantPatterns 4).length = 12 :=
  LemmaA.commutant_three

open LemmaA GM in

theorem LemmaA_three_commute : threeCommute 2 group2 = true ∧ threeCommute 2 gens2 = true ∧ threeCommute 3 gens3 = true :=
  LemmaA.three_commute

open LemmaA GM in

theorem LemmaA_diag_independent : diagIndependent 2 = true ∧ diagIndependent 3 = true :=
  LemmaA.diag_independent

open LemmaA GM in

theorem LemmaA_haar_face : haarTwoCommute 2 = true ∧ haarTwoCommute 3 = true ∧
    diagFailsHaar 2 = true ∧ diagFailsHaar 3 = true :=
  LemmaA.haar_face

open CollapseG1 GM LemmaA in

theorem CollapseG1_collapse : collapseCert = true :=
  CollapseG1.collapse

open CollapseG2 GM LemmaA in

theorem CollapseG2_collapse : collapseCert = true :=
  CollapseG2.collapse

open CollapseG3 GM LemmaA in

theorem CollapseG3_collapse : collapseCert = true :=
  CollapseG3.collapse

open CollapseD2 GM LemmaA in

theorem CollapseD2_collapse : collapseCert = true :=
  CollapseD2.collapse

open Span GM LemmaA in

theorem Span_fixed_space_span_d3 :
    (systemRows 3 gens3).length = 243 ∧ (systemRows 3 gens3).all (fun r => r.length == 81) = true ∧
    selectCols (selectRows (systemRows 3 gens3) Certificates.minorRows3) Certificates.minorCols3 = Certificates.minorLit3 ∧
    Certificates.minorRows3.length = 78 ∧ Certificates.minorCols3.length = 78 ∧
    (systemRows 3 gens3).all (fun r => (orbitSumVectors 3).all (fun v => dot r v == G.zero)) = true ∧
    independenceMinor 3 Certificates.orbitSumCols3 = identity 3 :=
  Span.fixed_space_span_d3

open Span GM LemmaA in

theorem Span_fixed_space_span_d2 :
    (systemRows 2 gens2).length = 32 ∧ (systemRows 2 gens2).all (fun r => r.length == 16) = true ∧
    selectCols (selectRows (systemRows 2 gens2) Certificates.minorRows2) Certificates.minorCols2 = Certificates.minorLit2 ∧
    Certificates.minorRows2.length = 13 ∧ Certificates.minorCols2.length = 13 ∧
    (systemRows 2 gens2).all (fun r => (orbitSumVectors 2).all (fun v => dot r v == G.zero)) = true ∧
    independenceMinor 2 Certificates.orbitSumCols2 = identity 3 :=
  Span.fixed_space_span_d2

open SpanRank GM in

theorem SpanRank_rank_d3 : bareissG Certificates.minorLit3 ≠ G.zero :=
  SpanRank.rank_d3

open SpanRank GM in

theorem SpanRank_rank_d2 : bareissG Certificates.minorLit2 ≠ G.zero :=
  SpanRank.rank_d2

open IdAlg GM in

theorem IdAlg_closure : closureHolds = true ∧ basis.length = 12 :=
  IdAlg.closure

open IdAlg GM in

theorem IdAlg_centre_one_dimensional :
    ZM.mulVec adjointConstraint tuVector = List.replicate 144 0 ∧
    ZM.det (ZM.minor adjointConstraint centreMinorRows (List.range 11)) ≠ 0 :=
  IdAlg.centre_one_dimensional

open IdAlg GM in

theorem IdAlg_tu_central : basis.all (fun b => isZero (comm n TU b)) = true ∧ isZero (comm n TU TU) = true :=
  IdAlg.tu_central

open IdAlg GM in

theorem IdAlg_forms :
    ZM.mulVec killing tuVector = List.replicate 12 0 ∧
    ZM.det (ZM.minor killing (List.range 11) (List.range 11)) ≠ 0 ∧
    ZM.det traceForm ≠ 0 ∧ ZM.entry traceForm 11 11 = -30 :=
  IdAlg.forms

open IdAlg GM in

theorem IdAlg_tensor_commutant_scalars :
    ZM.mulVec tensorConstraint identityVector = List.replicate 432 0 ∧
    ZM.det (ZM.minor tensorConstraint tensorMinorRows tensorMinorCols) ≠ 0 :=
  IdAlg.tensor_commutant_scalars

open IdAlg GM in

theorem IdAlg_centre_acts :
    rho TU = smul G.iu (identity 6) ∧ mulVec (rho TU) pairKet23 = smulVec G.iu pairKet23 ∧
    isZero (rho22 TU22) = true :=
  IdAlg.centre_acts

open Theorem1 GM in

theorem Theorem1_readout_is_trace_form :
    (ZM.mulVec IdAlg.killing IdAlg.tuVector = List.replicate 12 0 ∧
    ZM.det (ZM.minor IdAlg.killing (List.range 11) (List.range 11)) ≠ 0 ∧
    ZM.det IdAlg.traceForm ≠ 0 ∧ ZM.entry IdAlg.traceForm 11 11 = -30) ∧
    (ZM.mulVec IdAlg.tensorConstraint IdAlg.identityVector = List.replicate 432 0 ∧
    ZM.det (ZM.minor IdAlg.tensorConstraint IdAlg.tensorMinorRows IdAlg.tensorMinorCols) ≠ 0) ∧
    Expected.tensorCommutantDim23 = 1 ∧ Expected.killingRank23 = 11 :=
  Theorem1.readout_is_trace_form

open LemmaB in

theorem LemmaB_centre_generators :
    (let (a, b) := centralFunctional (2, 3); List.replicate 2 a ++ List.replicate 3 b) = Expected.centreGenerator23 ∧
    (List.replicate 2 (1 : Int) ++ List.replicate 2 (-1 : Int)) = Expected.centreGenerator22 ∧
    centralFunctional (2, 2) = (0, 0) ∧ centralFunctional (2, 3) = (3, -2) :=
  LemmaB.centre_generators

open Census in

theorem Census_blocks_and_roster :
    slotDims = Expected.slotDims ∧ sort blocks = sort Expected.blocks ∧
    blocks.foldl (· + ·) 0 = Expected.rosterCount ∧ roster = Expected.rosterCount ∧
    roster + closureSector = Expected.recordCount ∧ fixed = Expected.fixedCount ∧
    (roster - fixed) / 2 = Expected.orbitCount :=
  Census.blocks_and_roster

open Census in

theorem Census_record_census :
    records.length = Expected.recordCount ∧ rosterRecords.length = Expected.rosterCount ∧
    closureRecords.length = Expected.reentryCount ∧ closureRecords.map Rec.id = Expected.closureIds ∧
    slotMixed = Expected.slotMixed ∧ slotOneEnd = Expected.slotOneEnd ∧
    slotMixed = mixed ∧ slotOneEnd = same + closureSector :=
  Census.record_census

open OrbitReading GM in

theorem OrbitReading_orbit_reading :
    webs.length = Expected.recordCount ∧ webs.map Web.id = records.map Rec.id ∧
    (websOf .oddOrbit).length = Expected.orbitRecords ∧ (websOf .evenOrbit).length = Expected.orbitRecords ∧
    (websOf .fixed).length = Expected.fixedRecords ∧ (websOf .reentry).length = Expected.reentryCount ∧
    2 * Expected.orbitRecords + Expected.fixedRecords + Expected.reentryCount = Expected.recordCount ∧
    allLabels.length = Expected.rosterCount ∧
    (websOf .oddOrbit).all (isOrbitWeb (-1)) = true ∧ (websOf .evenOrbit).all (isOrbitWeb 1) = true ∧
    (websOf .fixed).all isFixedWeb = true ∧ (websOf .reentry).all isCommutatorWeb = true ∧
    sort (((websOf .oddOrbit).map label).map labelCode ++ ((websOf .oddOrbit).map (fun w => swapPair (label w))).map labelCode ++ ((websOf .fixed).map label).map labelCode) = sort (allLabels.map labelCode) ∧
    sort (((websOf .oddOrbit).map label).map labelCode) = sort (((websOf .evenOrbit).map label).map labelCode) ∧
    (webs.zip records).all (fun p => typingOK p.1 p.2) = true :=
  OrbitReading.orbit_reading

open OrbitReading GM in

theorem OrbitReading_no_fixedness_asked :
    fixedUnder (LemmaA.gens3.getD 2 []) (identity 2) (webs.getD 0 ⟨"", .fixed, []⟩) = false ∧
    LemmaA.gens3.all (fun u => fixedUnder u (identity 2) (webs.getD (Expected.recordCount - Expected.reentryCount - 1) ⟨"", .fixed, []⟩)) = true ∧
    LemmaA.gens2.all (fun u => fixedUnder (identity 3) u (webs.getD (Expected.recordCount - Expected.reentryCount - 1) ⟨"", .fixed, []⟩)) = true ∧
    (webs.getD (Expected.recordCount - Expected.reentryCount - 1) ⟨"", .fixed, []⟩).id = Expected.recordFixedUnderGroupId :=
  OrbitReading.no_fixedness_asked

open Theorem1 GM in

theorem Theorem1_dressing_equals_bare :
    generatorFixed = true ∧ Expected.z2OverZ1 = 1 ∧ Expected.dressingRatiosAllOne = "1,1,1,1,1" :=
  Theorem1.dressing_equals_bare

open MasslessOpenLink LemmaB in

theorem MasslessOpenLink_absent_mass_term : AbsentMassTermStatement :=
  MasslessOpenLink.absent_mass_term

open LemmaB in

theorem LemmaB_massless_faces :
    closedReads objectOfRecord = [] ∧ restEnergy objectOfRecord = 0 ∧ restEnergy objectOfRecord = Expected.photonChainSum ∧
    displacement (chain objectOfRecord) = (-1, 1, 0) ∧ massless objectOfRecord = true ∧
    massless ⟨(2, 3), .closed⟩ = false ∧ massless ⟨(2, 2), .open⟩ = false ∧
    (closedReads ⟨(2, 3), .closed⟩).length = 1 ∧ restEnergy ⟨(2, 3), .closed⟩ = 2 :=
  LemmaB.massless_faces

open LemmaB in

theorem LemmaB_office_at_the_one_link :
    passageCensus (linkGraph objectOfRecord) Expected.passageCap = Expected.passageCensusByLength ∧
    Expected.passageCensusByLength = [0, 0, 0, 0, 0, 0] ∧ Expected.passageCap = readCap ∧
    closedReads objectOfRecord = [] ∧ restEnergy objectOfRecord = 0 ∧
    closedReadAmplitude (closedReads objectOfRecord) = Q4.zero ∧
    Expected.commonSupport = min 2 3 ∧ Expected.supportRegister = 2 * 2 * 2 * 2 ∧
    Expected.admittedUnits.all (fun u => 0 < u && (Expected.firstPowerOpen * Expected.firstPowerOpen) / (u * u) == 0) = true ∧
    Expected.firstPowerOpen = 0 ∧ Expected.openReadoutCanon = 0 :=
  LemmaB.office_at_the_one_link

open LemmaB in

theorem LemmaB_spin_content :
    cutRegister (2, 3) = List.replicate 8 2 ∧ dimOf (cutRegister (2, 3)) = 24 ∧ spinOne (2, 3) = true ∧
    labels (cutRegister (2, 2)) = [0, 2, 4] ∧ dimOf (cutRegister (2, 2)) = 9 ∧ spinOne (2, 2) = false ∧
    cg 1 1 = [0, 2] ∧ 2 * 2 = 1 + 3 ∧ 1 * (1 + 1) = 2 ∧ traceless 2 = [2] :=
  LemmaB.spin_content

open AdjointRotation GM in

theorem AdjointRotation_adjoint_rotation : AdjointRotationStatement :=
  AdjointRotation.adjoint_rotation

open TransverseStates C12 CV CM CapBases in

theorem TransverseStates_two_transverse_states : TwoTransverseStatesStatement :=
  TransverseStates.two_transverse_states

open Correspondence Theorem5 LemmaB in

theorem Correspondence_rotation_group_under_first_premise (_p1 : DirectionsOfSharedSupport) : AdjointRotation.AdjointRotationStatement :=
  Correspondence.rotation_group_under_first_premise _p1

open Correspondence Theorem5 LemmaB in

theorem Correspondence_transverse_states_under_premises (_p2 : FixedDirectionIsMomentum) (_p3 : FarEndFixedDirectionByDirection) : TransverseStates.TwoTransverseStatesStatement :=
  Correspondence.transverse_states_under_premises _p2 _p3

open MomentumTransfer in

theorem MomentumTransfer_momentum_transfer_zero : MomentumTransferZeroStatement :=
  MomentumTransfer.momentum_transfer_zero

open LemmaB in

theorem LemmaB_zero_transfer : zeroTransfer = true ∧ steps.length = records.length :=
  LemmaB.zero_transfer

open LemmaB in

theorem LemmaB_unique_object :
    (readableObjects.filter allFour).map name = Expected.allFourObjects ∧
    (readableObjects.filter allFour).length = Expected.allFourCount ∧
    readableObjects.filter allFour = [objectOfRecord] ∧ readableObjects.length = 4 :=
  LemmaB.unique_object

open LemmaB in

theorem LemmaB_objectOfRecord_electromagneticLike : ElectromagneticLike objectOfRecord :=
  LemmaB.objectOfRecord_electromagneticLike

open Correspondence Theorem5 LemmaB in

theorem Correspondence_correspondence (_p1 : DirectionsOfSharedSupport) (_p2 : FixedDirectionIsMomentum) (_p3 : FarEndFixedDirectionByDirection)
    (_cap : Theorem5.ReadCapWoronowiczStormer) (_soft : Theorem5.SoftPhotonTheorem) (_onshell : Theorem5.OnShellDefinition)
    (_dec : Theorem5.Decoupling) (_ident : Theorem5.OnShellIdentification) :
    CorrespondenceOfRecord LemmaB.objectOfRecord ∧
    Theorem4.onShellCoupling LemmaB.objectOfRecord = Theorem4.closedFormOfRecord ∧ premiseUnion.length = 8 :=
  Correspondence.correspondence _p1 _p2 _p3 _cap _soft _onshell _dec _ident

open Theorem5 in

theorem Theorem5_correspondence_at_structure (_cap : ReadCapWoronowiczStormer)
    (_soft : SoftPhotonTheorem) (_dec : Decoupling) (_onshell : OnShellDefinition) (_ident : OnShellIdentification) :
    LemmaB.ElectromagneticLike LemmaB.objectOfRecord ∧
    Theorem4.onShellCoupling LemmaB.objectOfRecord = Theorem4.closedFormOfRecord :=
  Theorem5.correspondence_at_structure _cap _soft _dec _onshell _ident

open Theorem1 GM in

theorem Theorem1_register :
    whole 2 3 = Expected.registerWhole ∧ cut 2 3 = Expected.registerCut ∧ dimR 2 3 = Expected.registerDimR ∧
    oneLink 2 3 = Expected.oneLinkRegister ∧ whole 2 3 = 9 * 4 ∧ cut 2 3 = 8 * 3 ∧
    dimR 2 3 = 24 * 36 * 36 ∧ dimR 2 3 = Expected.closedFormDen :=
  Theorem1.register

open Theorem1 GM in

theorem Theorem1_one_unit :
    inner pairKet23 pairKet23 = G.ofInt 2 ∧
    (let P := outer pairKet23; mulN 6 P P = smul (G.ofInt 2) P ∧ trace P = G.ofInt 2) ∧
    Expected.alphaBare = 1 ∧ 2 * 3 = 6 :=
  Theorem1.one_unit

open Census in

theorem Census_weights_from_construction :
    records.all (fun r => squaredWeightProduct r == squaredWeightCount r) = true ∧
    closureRecords.map exchanges = Expected.closureEigenvalues ∧
    histogram = Expected.histogram ∧
    [countSector .odd, countSector .evenMixed, countSector .evenSame, countSector .closure] =
    [Expected.sectorOdd, Expected.sectorEvenMixed, Expected.sectorEvenSame, Expected.sectorClosure] ∧
    [oddSector, evenMixedSector, evenSameSector, closureSector] =
    [Expected.sectorOdd, Expected.sectorEvenMixed, Expected.sectorEvenSame, Expected.sectorClosure] ∧
    dimX * dimY = Expected.closureCount ∧ Expected.endMap = "X:centre:3;Y:far:2" :=
  Census.weights_from_construction

open Census in

theorem Census_weights_square :
    Q4.mul Q4.one Q4.one = ⟨1, 0, 0, 0⟩ ∧ Q4.mul Q4.root2 Q4.root2 = ⟨2, 0, 0, 0⟩ ∧
    Q4.mul Q4.root3 Q4.root3 = ⟨3, 0, 0, 0⟩ ∧ Q4.mul Q4.root6 Q4.root6 = ⟨6, 0, 0, 0⟩ ∧
    Q4.mul Q4.root2 Q4.root3 = Q4.root6 :=
  Census.weights_square

open ClosureSign GM in

theorem ClosureSign_weyl_relation :
    mulN 2 Z X = neg (mulN 2 X Z) ∧ Expected.weylOmega = -1 ∧
    pairs.all (fun p => orderSign p.2.1 p.2.2 == -1) = true ∧
    pairs.all (fun p => !(isZero (mulN 2 p.2.1 p.2.2)) && isZero (sym p.2.1 p.2.2) && !(isZero (antisym p.2.1 p.2.2))) = true ∧
    trace X = G.zero ∧ trace Z = G.zero ∧ trace XZ = G.zero :=
  ClosureSign.weyl_relation

open ClosureSign GM in

theorem ClosureSign_two_copy_realisation :
    pairs.all (fun p => let u := p.2.1; let v := p.2.2
    mulN 4 (mulN 4 swap2 (T u v)) swap2 == T v u && swapEigen (T u v) == 0 &&
    swapEigen (sub (T u v) (T v u)) == -1 && swapEigen (add (T u v) (T v u)) == 1 &&
    compose [(1, u, v), (-1, v, u)] == antisym u v && isZero (compose [(1, u, v), (1, v, u)])) = true :=
  ClosureSign.two_copy_realisation

open ClosureSign GM in

theorem ClosureSign_transport :
    transports X = true ∧ transports Z = true ∧ transports XZ = true ∧
    pairs.all (fun p => exchangeCentre p.2.1 p.2.2 == -1) = true :=
  ClosureSign.transport

open ClosureSign GM in

theorem ClosureSign_closure_sign :
    closureExchanges = Expected.closureEigenvalues ∧
    pairs.all (fun p => orderSign p.2.1 p.2.2 == exchangeFar p.2.1 p.2.2 && orderSign p.2.1 p.2.2 == exchangeCentre p.2.1 p.2.2) = true ∧
    Expected.weylCommutatorMap.all (fun m => pairs.any (fun p => p.1 == m.1)) = true ∧
    pairs.all (fun p => Expected.weylCommutatorMap.any (fun m => m.1 == p.1)) = true ∧
    Expected.weylCommutatorMap.all (fun m => Expected.closureIds.contains m.2.1) = true ∧
    Expected.closureIds.all (fun i => Expected.weylCommutatorMap.any (fun m => m.2.1 == i)) = true ∧
    closureExchanges.length = 3 ∧ Expected.closureSignClause.all (fun c => c.2 == -1) = true ∧
    Expected.closureCopyExchange.all (fun c => c.2.1 == -1 && c.2.2 == -1) = true :=
  ClosureSign.closure_sign

open GainLemma Census in

theorem GainLemma_multiplicity_is_passed_end_product :
    records.all (fun r => multiplicity r == passedEndProduct r) = true ∧
    records.all (fun r => passedEndProduct r == sectorGain (sector r)) = true ∧
    passedEndCensus = GainCells.passedEndCensus ∧ multiplicityCensus = GainCells.multiplicityCensus ∧
    multiplicityCensus = Expected.histogram ∧ records.length = 172 ∧
    GainCells.recordEq = "172 of 172" ∧ GainCells.firstParting = "NONE" ∧
    GainCells.correspondenceDerived = "ODD:none;MIXED:far;REPEATED:centre;REENTRY:centre+far" :=
  GainLemma.multiplicity_is_passed_end_product

open GainLemma Census in

theorem GainLemma_readout_is_root :
    records.all (fun r => weight r == rootOfMultiplicity r) = true ∧
    records.all (fun r => Q4.mul (weight r) (weight r) == ⟨Int.ofNat (multiplicity r), 0, 0, 0⟩) = true :=
  GainLemma.readout_is_root

open GainLemma Census in

theorem GainLemma_end_set_sums :
    endSetSums = GainCells.endSetSums ∧ endSetExacts = GainCells.endSetExact ∧
    endSetSum [dimFar, dimCentre] = GainCells.supportRankSum ∧
    endSetSum [] = endSetExact [] ∧
    endSetSum [dimFar] = endSetExact [] + endSetExact [dimFar] ∧
    endSetSum [dimCentre] = endSetExact [] + endSetExact [dimCentre] ∧
    endSetSum [dimFar, dimCentre] = endSetExact [] + endSetExact [dimFar] + endSetExact [dimCentre] + endSetExact [dimFar, dimCentre] :=
  GainLemma.end_set_sums

open GainLemma Census in

theorem GainLemma_born_count_is_a_measure :
    sectorGains = GainCells.sectorGainsCorrespondence ∧ sectorGains = GainCells.sectorGainsLesserGreater ∧
    multiplicityCensus = GainCells.genreGains ∧
    bornFace = GainCells.genreBorn ∧ bornFace = multiplicitySum ∧ bornFace = endSetSum [dimFar, dimCentre] ∧
    coherentSum = ⟨GainCells.genreN.getD 0 0, GainCells.genreN.getD 1 0, GainCells.genreN.getD 2 0, GainCells.genreN.getD 3 0⟩ ∧
    coherentSum = Theorem4.registerSum ∧
    GainCells.candidateCount = GainCells.matchCount ∧ GainCells.eqglFirstParting = "NONE" :=
  GainLemma.born_count_is_a_measure

open Theorem5 in

theorem Theorem5_sub_add_sub (x y z : Int) : (x - y) + (y - z) = x - z :=
  Theorem5.sub_add_sub x y z

open Theorem5 in

theorem Theorem5_telescoping (W : Functional) (count : Int) (a c b : Nat) :
    vertex W count (subdivided a c b) = vertex W count [(a, b)] :=
  Theorem5.telescoping W count a c b

open Theorem5 in

theorem Theorem5_one_link_iff (W : Functional) (count : Int) (a b : Nat) :
    vertex W count [(a, b)] = count ↔ W a = W b :=
  Theorem5.one_link_iff W count a b

open Theorem5 in

theorem Theorem5_unit_washed (count : Int) (pairs : List (Nat × Nat)) : vertex unitFunctional count pairs = count :=
  Theorem5.unit_washed count pairs

open Theorem5 in

theorem Theorem5_readings_washed :
    readings.length = Expected.readingsCount ∧
    (readings.filter fun r => r.unit == .path).length = Expected.readingsPath ∧
    (readings.filter fun r => r.unit == .single).length = Expected.readingsSingle ∧
    (readings.filter fun r => r.unit == .open').length = Expected.readingsOpen ∧
    [orderingFirst.length, orderingsA.length, orderingsB.length, orderingsC.length] = [1, 8, 4, 24] ∧
    readings.all (fun rd => readClasses.all fun ends => recordHolds unitFunctional rd ends) = true ∧
    identityAt wallFunctional [oneLink true] = false ∧ vertex wallFunctional 0 (dims (oneLink true)) = -12 :=
  Theorem5.readings_washed

open Theorem5 in

theorem Theorem5_interleavings_washed :
    (merges [.R, .J1, .J2, .J3] [.R, .J1, .J2, .J3]).length = 70 ∧
    (interleavings true).length + (interleavings false).length = 70 * 8 * 8 * 2 ∧
    [true, false].all (fun pol => (interleavings pol).all fun r =>
    identityAt unitFunctional (interleaveStates pol r (twoCopyLink pol))) = true :=
  Theorem5.interleavings_washed

open Theorem5 in

theorem Theorem5_line_of_record :
    vertex unitFunctional 0 [(3, 2)] = 0 ∧
    alphabetPairs.all (fun p => vertex unitFunctional 0 [p] == 0) = true ∧
    subdivisionsOfRecord.all (fun s => vertex unitFunctional 0 (subdivided s.1 s.2.1 s.2.2) == vertex unitFunctional 0 [(s.1, s.2.2)]) = true ∧
    subdivisionsOfRecord.all (fun s => vertex wallFunctional 0 (subdivided s.1 s.2.1 s.2.2) == vertex wallFunctional 0 [(s.1, s.2.2)]) = true ∧
    vertex wallFunctional 0 [(3, 2)] = -12 ∧ Expected.wardRecordIdentity = "172 of 172" ∧
    Expected.wardLinkPaths = "48 of 48" :=
  Theorem5.line_of_record

open Theorem5 in

theorem Theorem5_ward_identity :
    (∀ (W : Functional) (count : Int) (a c b : Nat), vertex W count (subdivided a c b) = vertex W count [(a, b)]) ∧
    (∀ (W : Functional) (count : Int) (a b : Nat), vertex W count [(a, b)] = count ↔ W a = W b) ∧
    (∀ (count : Int) (pairs : List (Nat × Nat)), vertex unitFunctional count pairs = count) ∧
    vertex unitFunctional 0 [(3, 2)] = 0 :=
  Theorem5.ward_identity

open Theorem4 Census in

theorem Theorem4_value :
    registerSum = ⟨79, 48, 42, 3⟩ ∧ register = 24 * 36 * 36 ∧
    (registerSum, register) = closedFormOfRecord ∧
    registerSum = ⟨(Expected.sectorOdd : Int), (Expected.sectorEvenMixed : Int), (Expected.sectorEvenSame : Int), (Expected.sectorClosure : Int)⟩ :=
  Theorem4.value

open Theorem4 Census in

theorem Theorem4_value_at_structure (_h : LemmaB.ElectromagneticLike LemmaB.objectOfRecord) :
    onShellCoupling LemmaB.objectOfRecord = closedFormOfRecord :=
  Theorem4.value_at_structure _h

open Theorem4 Census in

theorem Theorem4_closed_form_spelled : closedFormOfRecord = (⟨79, 48, 42, 3⟩, 31104) :=
  Theorem4.closed_form_spelled

open OneLinkWord OneLinkWord.Cells in

theorem OneLinkWord_alpha_instance : theoremForm Weighting.amplitude Theorem4.register alphaWord ⟨Int.ofNat Expected.sectorOdd, Int.ofNat Expected.sectorEvenMixed, Int.ofNat Expected.sectorEvenSame, Int.ofNat Expected.sectorClosure⟩ :=
  OneLinkWord.alpha_instance

open OneLinkWord OneLinkWord.Cells in

theorem OneLinkWord_alpha_re_meets_the_value_theorem : readout sectorsOfRecord alphaWord = Theorem4.closedFormOfRecord ∧ readout sectorsOfRecord alphaWord = (Theorem4.registerSum, Theorem4.register) :=
  OneLinkWord.alpha_re_meets_the_value_theorem

open OneLinkWord OneLinkWord.Cells in

theorem OneLinkWord_born_counts_are_the_gain_end_set_sums :
    [bornCountAtNone, bornCountAtQubit, bornCountAtQutrit, bornCountAtBoth] = GainLemma.endSetSums.map (fun t => t.2) ∧
    alphaActSumOfRecord = GainLemma.endSetSum [GainLemma.dimFar, GainLemma.dimCentre] :=
  OneLinkWord.born_counts_are_the_gain_end_set_sums

open OneLinkWord OneLinkWord.Cells in

theorem OneLinkWord_value_theorem_with_the_word_as_a_parameter :
    theoremForm Weighting.amplitude Theorem4.register alphaWord ⟨Int.ofNat Expected.sectorOdd, Int.ofNat Expected.sectorEvenMixed, Int.ofNat Expected.sectorEvenSame, Int.ofNat Expected.sectorClosure⟩ ∧
    readout sectorsOfRecord alphaWord = Theorem4.closedFormOfRecord ∧ alphaWord.links.length = 1 :=
  OneLinkWord.value_theorem_with_the_word_as_a_parameter

end Statements
end AlphaDerivation
