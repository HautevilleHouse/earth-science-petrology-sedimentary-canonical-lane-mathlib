import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologySedimentaryCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.depositionalEnvironment ∧ A.object.grainSizeDistribution ∧ A.object.sorting

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  have h := A.object.conclusion
  exact h

end EarthSciencePetrologySedimentaryCanonicalLaneLean
end HautevilleHouse