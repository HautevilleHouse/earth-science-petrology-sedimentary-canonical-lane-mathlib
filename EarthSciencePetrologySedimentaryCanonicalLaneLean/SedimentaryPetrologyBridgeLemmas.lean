import HautevilleHouse.EarthSciencePetrologySedimentaryCanonicalLaneLean.SedimentaryPetrologyAdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologySedimentaryCanonicalLaneLean

def bridgeClosed (A : SedimentaryAdmissibleClass) : Prop :=
  SedimentaryWitnessClosed A.object

theorem bridge_from_admissible_class (A : SedimentaryAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EarthSciencePetrologySedimentaryCanonicalLaneLean
end HautevilleHouse