import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologySedimentaryCanonicalLaneLean

structure SedimentaryBasinPackage where
  basinGeometry : Prop
  stratigraphy : Prop
  subsidenceHistory : Prop
  thermalHistory : Prop
  provenance : Prop

def SedimentaryBasinClosed (B : SedimentaryBasinPackage) : Prop :=
  B.basinGeometry ∧ B.stratigraphy ∧ B.subsidenceHistory ∧ B.thermalHistory ∧ B.provenance

structure SedimentaryBasinEvidence (B : SedimentaryBasinPackage) where
  basinGeometryClosed : B.basinGeometry
  stratigraphyClosed : B.stratigraphy
  subsidenceHistoryClosed : B.subsidenceHistory
  thermalHistoryClosed : B.thermalHistory
  provenanceClosed : B.provenance

theorem sedimentary_basin_closed_from_evidence (B : SedimentaryBasinPackage) (E : SedimentaryBasinEvidence B) : SedimentaryBasinClosed B := by
  exact And.intro E.basinGeometryClosed (And.intro E.stratigraphyClosed (And.intro E.subsidenceHistoryClosed (And.intro E.thermalHistoryClosed E.provenanceClosed)))

end EarthSciencePetrologySedimentaryCanonicalLaneLean
end HautevilleHouse