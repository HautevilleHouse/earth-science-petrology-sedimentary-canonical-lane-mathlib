import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologySedimentaryCanonicalLaneLean

structure DepositionalEnvironmentPackage where
  sedimentaryStructures : Prop
  faciesModel : Prop
  paleocurrentAnalysis : Prop
  sequenceStratigraphy : Prop

def DepositionalEnvironmentClosed (D : DepositionalEnvironmentPackage) : Prop :=
  D.sedimentaryStructures ∧ D.faciesModel ∧ D.paleocurrentAnalysis ∧ D.sequenceStratigraphy

structure DepositionalEnvironmentEvidence (D : DepositionalEnvironmentPackage) where
  sedimentaryStructuresClosed : D.sedimentaryStructures
  faciesModelClosed : D.faciesModel
  paleocurrentAnalysisClosed : D.paleocurrentAnalysis
  sequenceStratigraphyClosed : D.sequenceStratigraphy

theorem depositional_environment_closed_from_evidence (D : DepositionalEnvironmentPackage) (E : DepositionalEnvironmentEvidence D) : DepositionalEnvironmentClosed D := by
  exact And.intro E.sedimentaryStructuresClosed (And.intro E.faciesModelClosed (And.intro E.paleocurrentAnalysisClosed E.sequenceStratigraphyClosed))

end EarthSciencePetrologySedimentaryCanonicalLaneLean
end HautevilleHouse