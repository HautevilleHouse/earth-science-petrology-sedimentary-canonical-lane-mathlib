import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologySedimentaryCanonicalLaneLean

structure SedimentaryFaciesPackage where
  lithology : Prop
  sedimentaryStructures : Prop
  fossilContent : Prop
  bedGeometry : Prop
  paleocurrentIndicators : Prop

structure SedimentaryFaciesEvidence (F : SedimentaryFaciesPackage) where
  lithologyClosed : F.lithology
  sedimentaryStructuresClosed : F.sedimentaryStructures
  fossilContentClosed : F.fossilContent
  bedGeometryClosed : F.bedGeometry
  paleocurrentIndicatorsClosed : F.paleocurrentIndicators

def SedimentaryFaciesClosed (F : SedimentaryFaciesPackage) : Prop :=
  F.lithology ∧ F.sedimentaryStructures ∧ F.fossilContent ∧ F.bedGeometry ∧ F.paleocurrentIndicators

theorem sedimentary_facies_closed_from_evidence (F : SedimentaryFaciesPackage) (E : SedimentaryFaciesEvidence F) : SedimentaryFaciesClosed F := by
  exact And.intro E.lithologyClosed (And.intro E.sedimentaryStructuresClosed (And.intro E.fossilContentClosed (And.intro E.bedGeometryClosed E.paleocurrentIndicatorsClosed)))

end EarthSciencePetrologySedimentaryCanonicalLaneLean
end HautevilleHouse