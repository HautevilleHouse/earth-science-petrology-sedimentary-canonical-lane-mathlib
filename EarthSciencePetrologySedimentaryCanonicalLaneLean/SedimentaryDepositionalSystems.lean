import canonicalLaneMathlib.AdmissibleClass
import EarthSciencePetrologySedimentaryCanonicalLaneLean.SedimentaryPetrology

namespace HautevilleHouse
namespace EarthSciencePetrologySedimentaryCanonicalLaneLean

structure DepositionalEnvironment where
  energyLevel : Prop
  sedimentSupply : Prop
  basinGeometry : Prop
  conclusion : energyLevel ∧ sedimentSupply ∧ basinGeometry

structure DepositionalSystemEvidence (D : DepositionalEnvironment) where
  energyLevelClosed : D.energyLevel
  sedimentSupplyClosed : D.sedimentSupply
  basinGeometryClosed : D.basinGeometry

def DepositionalSystemClosed (D : DepositionalEnvironment) : Prop :=
  D.energyLevel ∧ D.sedimentSupply ∧ D.basinGeometry

theorem depositional_system_closed_from_evidence
    (D : DepositionalEnvironment) (E : DepositionalSystemEvidence D) :
    DepositionalSystemClosed D := by
  exact And.intro E.energyLevelClosed (And.intro E.sedimentSupplyClosed E.basinGeometryClosed)

end EarthSciencePetrologySedimentaryCanonicalLaneLean
end HautevilleHouse
