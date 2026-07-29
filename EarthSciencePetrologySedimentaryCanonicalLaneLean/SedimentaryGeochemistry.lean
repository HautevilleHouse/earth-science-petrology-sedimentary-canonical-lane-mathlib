import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologySedimentaryCanonicalLaneLean

structure SedimentaryGeochemistryPackage where
  elementalComposition : Prop
  isotopeGeochemistry : Prop
  organicGeochemistry : Prop
  redoxConditions : Prop
  diageneticAlteration : Prop

def SedimentaryGeochemistryClosed (G : SedimentaryGeochemistryPackage) : Prop :=
  G.elementalComposition ∧ G.isotopeGeochemistry ∧ G.organicGeochemistry ∧ G.redoxConditions ∧ G.diageneticAlteration

structure SedimentaryGeochemistryEvidence (G : SedimentaryGeochemistryPackage) where
  elementalCompositionClosed : G.elementalComposition
  isotopeGeochemistryClosed : G.isotopeGeochemistry
  organicGeochemistryClosed : G.organicGeochemistry
  redoxConditionsClosed : G.redoxConditions
  diageneticAlterationClosed : G.diageneticAlteration

theorem sedimentary_geochemistry_closed_from_evidence (G : SedimentaryGeochemistryPackage) (E : SedimentaryGeochemistryEvidence G) : SedimentaryGeochemistryClosed G := by
  exact And.intro E.elementalCompositionClosed (And.intro E.isotopeGeochemistryClosed (And.intro E.organicGeochemistryClosed (And.intro E.redoxConditionsClosed E.diageneticAlterationClosed)))

end EarthSciencePetrologySedimentaryCanonicalLaneLean
end HautevilleHouse