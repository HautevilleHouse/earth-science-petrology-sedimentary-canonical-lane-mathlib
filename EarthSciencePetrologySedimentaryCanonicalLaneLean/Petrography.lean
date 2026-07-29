import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologySedimentaryCanonicalLaneLean

structure PetrographyPackage where
  mineralComposition : Prop
  texture : Prop
  classification : Prop
  provenanceIndicators : Prop
  diageneticAlteration : Prop

structure PetrographyEvidence (P : PetrographyPackage) where
  mineralCompositionClosed : P.mineralComposition
  textureClosed : P.texture
  classificationClosed : P.classification
  provenanceIndicatorsClosed : P.provenanceIndicators
  diageneticAlterationClosed : P.diageneticAlteration

def PetrographyClosed (P : PetrographyPackage) : Prop :=
  P.mineralComposition ∧ P.texture ∧ P.classification ∧ P.provenanceIndicators ∧ P.diageneticAlteration

theorem petrography_closed_from_evidence (P : PetrographyPackage) (E : PetrographyEvidence P) : PetrographyClosed P := by
  exact And.intro E.mineralCompositionClosed (And.intro E.textureClosed (And.intro E.classificationClosed (And.intro E.provenanceIndicatorsClosed E.diageneticAlterationClosed)))

end EarthSciencePetrologySedimentaryCanonicalLaneLean
end HautevilleHouse