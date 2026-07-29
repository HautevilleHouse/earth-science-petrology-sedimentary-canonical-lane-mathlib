import canonicalLaneMathlib.AdmissibleClass
import EarthSciencePetrologySedimentaryCanonicalLaneLean.SedimentaryPetrology

namespace HautevilleHouse
namespace EarthSciencePetrologySedimentaryCanonicalLaneLean

open AdmissibleSedimentaryClass

def bridgeClosed (A : AdmissibleSedimentaryClass) : Prop :=
  A.object.conclusion

theorem bridge_from_admissible_class (A : AdmissibleSedimentaryClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EarthSciencePetrologySedimentaryCanonicalLaneLean
end HautevilleHouse
