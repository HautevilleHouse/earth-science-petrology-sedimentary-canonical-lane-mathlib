import canonicalLaneMathlib.AdmissibleClass
import EarthSciencePetrologySedimentaryCanonicalLaneLean.SedimentaryBridgeLemmas

namespace HautevilleHouse
namespace EarthSciencePetrologySedimentaryCanonicalLaneLean

def gateClosed (A : AdmissibleSedimentaryClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleSedimentaryClass) :
    gateClosed A := by
  exact A.gateWitness

end EarthSciencePetrologySedimentaryCanonicalLaneLean
end HautevilleHouse
