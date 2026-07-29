import HautevilleHouse.EarthSciencePetrologySedimentaryCanonicalLaneLean.SedimentaryPetrologyAdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologySedimentaryCanonicalLaneLean

structure SedimentaryStructuresPackage where
  bedding : Prop
  crossStratification : Prop
  rippleMarks : Prop
  mudCracks : Prop
  fossils : Prop

structure SedimentaryStructuresEvidence (S : SedimentaryStructuresPackage) where
  beddingClosed : S.bedding
  crossStratificationClosed : S.crossStratification
  rippleMarksClosed : S.rippleMarks
  mudCracksClosed : S.mudCracks
  fossilsClosed : S.fossils

def SedimentaryStructuresClosed (S : SedimentaryStructuresPackage) : Prop :=
  S.bedding ∧ S.crossStratification ∧ S.rippleMarks ∧ S.mudCracks ∧ S.fossils

theorem sedimentary_structures_closed_from_evidence (S : SedimentaryStructuresPackage)
    (E : SedimentaryStructuresEvidence S) : SedimentaryStructuresClosed S := by
  exact And.intro E.beddingClosed
    (And.intro E.crossStratificationClosed
      (And.intro E.rippleMarksClosed
        (And.intro E.mudCracksClosed E.fossilsClosed)))

end EarthSciencePetrologySedimentaryCanonicalLaneLean
end HautevilleHouse