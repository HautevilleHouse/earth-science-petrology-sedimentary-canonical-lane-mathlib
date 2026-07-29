import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologySedimentaryCanonicalLaneLean

structure ProvenancePackage where
  sourceRockComposition : Prop
  weatheringHistory : Prop
  transportPathways : Prop
  diagenesis : Prop

def ProvenanceClosed (P : ProvenancePackage) : Prop :=
  P.sourceRockComposition ∧ P.weatheringHistory ∧ P.transportPathways ∧ P.diagenesis

structure ProvenanceEvidence (P : ProvenancePackage) where
  sourceRockCompositionClosed : P.sourceRockComposition
  weatheringHistoryClosed : P.weatheringHistory
  transportPathwaysClosed : P.transportPathways
  diagenesisClosed : P.diagenesis

theorem provenance_closed_from_evidence (P : ProvenancePackage) (E : ProvenanceEvidence P) : ProvenanceClosed P := by
  exact And.intro E.sourceRockCompositionClosed (And.intro E.weatheringHistoryClosed (And.intro E.transportPathwaysClosed E.diagenesisClosed))

end EarthSciencePetrologySedimentaryCanonicalLaneLean
end HautevilleHouse