import EarthSciencePetrologySedimentaryCanonicalLaneLean.SedimentaryPetrologyAdmissibleObject

namespace HautevilleHouse
namespace EarthSciencePetrologySedimentaryCanonicalLaneLean

def bridgeClosed (A : SedimentaryAdmittedObject) : Prop :=
  A.depositionalEnvironmentReconstructed

theorem bridge_from_admissible_class (A : SedimentaryAdmittedObject) :
    bridgeClosed A := by
  exact A.depositionalEnvironmentReconstructed

end EarthSciencePetrologySedimentaryCanonicalLaneLean
end HautevilleHouse