import HautevilleHouse.EarthSciencePetrologySedimentaryCanonicalLaneLean.SedimentaryPetrologyAdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologySedimentaryCanonicalLaneLean

structure DiageneticPackage where
  compaction : Prop
  cementation : Prop
  recrystallization : Prop
  dissolution : Prop
  authigenesis : Prop

structure DiageneticEvidence (D : DiageneticPackage) where
  compactionClosed : D.compaction
  cementationClosed : D.cementation
  recrystallizationClosed : D.recrystallization
  dissolutionClosed : D.dissolution
  authigenesisClosed : D.authigenesis

def DiageneticClosed (D : DiageneticPackage) : Prop :=
  D.compaction ∧ D.cementation ∧ D.recrystallization ∧ D.dissolution ∧ D.authigenesis

theorem diagenetic_closed_from_evidence (D : DiageneticPackage) (E : DiageneticEvidence D) :
    DiageneticClosed D := by
  exact And.intro E.compactionClosed
    (And.intro E.cementationClosed
      (And.intro E.recrystallizationClosed
        (And.intro E.dissolutionClosed E.authigenesisClosed)))

end EarthSciencePetrologySedimentaryCanonicalLaneLean
end HautevilleHouse