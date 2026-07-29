import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologySedimentaryCanonicalLaneLean

structure FaciesModelPackage where
  depositionalEnvironment : Prop
  lithofaciesTypes : Prop
  sedimentaryStructures : Prop
  faciesAssociations : Prop
  verticalSuccession : Prop
  lateralContinuity : Prop

structure FaciesModelEvidence (F : FaciesModelPackage) where
  depositionalEnvironmentClosed : F.depositionalEnvironment
  lithofaciesTypesClosed : F.lithofaciesTypes
  sedimentaryStructuresClosed : F.sedimentaryStructures
  faciesAssociationsClosed : F.faciesAssociations
  verticalSuccessionClosed : F.verticalSuccession
  lateralContinuityClosed : F.lateralContinuity

def FaciesModelClosed (F : FaciesModelPackage) : Prop :=
  F.depositionalEnvironment ∧ F.lithofaciesTypes ∧ F.sedimentaryStructures ∧
  F.faciesAssociations ∧ F.verticalSuccession ∧ F.lateralContinuity

theorem facies_model_closed_from_evidence (F : FaciesModelPackage)
    (E : FaciesModelEvidence F) : FaciesModelClosed F := by
  exact And.intro E.depositionalEnvironmentClosed
    (And.intro E.lithofaciesTypesClosed
      (And.intro E.sedimentaryStructuresClosed
        (And.intro E.faciesAssociationsClosed
          (And.intro E.verticalSuccessionClosed
            E.lateralContinuityClosed))))

end EarthSciencePetrologySedimentaryCanonicalLaneLean
end HautevilleHouse