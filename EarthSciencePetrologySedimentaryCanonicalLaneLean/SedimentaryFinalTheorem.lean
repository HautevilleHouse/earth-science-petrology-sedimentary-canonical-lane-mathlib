import canonicalLaneMathlib.AdmissibleClass
import EarthSciencePetrologySedimentaryCanonicalLaneLean.SedimentaryBridgeLemmas
import EarthSciencePetrologySedimentaryCanonicalLaneLean.SedimentaryGateLemmas

namespace HautevilleHouse
namespace EarthSciencePetrologySedimentaryCanonicalLaneLean

def ConstrainedSedimentaryClosure (A : AdmissibleSedimentaryClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_sedimentary_endgame (A : AdmissibleSedimentaryClass) :
    ConstrainedSedimentaryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EarthSciencePetrologySedimentaryCanonicalLaneLean
end HautevilleHouse
