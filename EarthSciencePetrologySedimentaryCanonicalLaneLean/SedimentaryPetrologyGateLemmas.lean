import HautevilleHouse.EarthSciencePetrologySedimentaryCanonicalLaneLean.SedimentaryPetrologyBridgeLemmas

namespace HautevilleHouse
namespace EarthSciencePetrologySedimentaryCanonicalLaneLean

def gateClosed (A : SedimentaryAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : SedimentaryAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end EarthSciencePetrologySedimentaryCanonicalLaneLean
end HautevilleHouse