import EarthSciencePetrologySedimentaryCanonicalLaneLean.StratigraphicBridgeLemmas

namespace HautevilleHouse
namespace EarthSciencePetrologySedimentaryCanonicalLaneLean

def gateClosed (A : SedimentaryAdmittedObject) : Prop :=
  A.provenanceInterpreted ∨ A.diageneticPathClosed

theorem gate_from_admissible_class (A : SedimentaryAdmittedObject) :
    gateClosed A := by
  exact A.sample.diageneticHistory

end EarthSciencePetrologySedimentaryCanonicalLaneLean
end HautevilleHouse