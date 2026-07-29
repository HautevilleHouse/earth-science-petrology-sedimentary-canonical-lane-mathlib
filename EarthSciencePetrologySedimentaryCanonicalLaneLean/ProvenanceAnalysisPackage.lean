import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologySedimentaryCanonicalLaneLean

structure ProvenanceAnalysisPackage where
  sourceRockType : Type
  detritalMode : Type
  heavyMineralAssemblage : Type
  geochemicalFingerprint : Prop
  paleocurrentIndicators : Prop
  weatheringIndices : Prop
  provenanceInterpretation : Prop

structure ProvenanceAnalysisEvidence (P : ProvenanceAnalysisPackage) where
  geochemicalFingerprintClosed : P.geochemicalFingerprint
  paleocurrentIndicatorsClosed : P.paleocurrentIndicators
  weatheringIndicesClosed : P.weatheringIndices
  provenanceInterpretationClosed : P.provenanceInterpretation

def ProvenanceAnalysisClosed (P : ProvenanceAnalysisPackage) : Prop :=
  P.geochemicalFingerprint ∧ P.paleocurrentIndicators ∧
  P.weatheringIndices ∧ P.provenanceInterpretation

theorem provenance_analysis_closed_from_evidence (P : ProvenanceAnalysisPackage)
    (E : ProvenanceAnalysisEvidence P) : ProvenanceAnalysisClosed P := by
  exact And.intro E.geochemicalFingerprintClosed
    (And.intro E.paleocurrentIndicatorsClosed
      (And.intro E.weatheringIndicesClosed
        E.provenanceInterpretationClosed))

end EarthSciencePetrologySedimentaryCanonicalLaneLean
end HautevilleHouse