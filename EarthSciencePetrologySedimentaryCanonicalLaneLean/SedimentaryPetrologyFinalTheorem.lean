import HautevilleHouse.EarthSciencePetrologySedimentaryCanonicalLaneLean.SedimentaryPetrologyGateLemmas

namespace HautevilleHouse
namespace EarthSciencePetrologySedimentaryCanonicalLaneLean

def ConstrainedSedimentaryClosure (A : SedimentaryAdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_sedimentary_endgame (A : SedimentaryAdmissibleClass) :
    ConstrainedSedimentaryClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EarthSciencePetrologySedimentaryCanonicalLaneLean
end HautevilleHouse