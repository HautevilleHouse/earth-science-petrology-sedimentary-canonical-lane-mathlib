import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologySedimentaryCanonicalLaneLean

structure DiageneticProcessesPackage where
  compaction : Prop
  cementation : Prop
  dissolution : Prop
  authigenesis : Prop
  recrystallization : Prop

structure DiageneticProcessesEvidence (D : DiageneticProcessesPackage) where
  compactionClosed : D.compaction
  cementationClosed : D.cementation
  dissolutionClosed : D.dissolution
  authigenesisClosed : D.authigenesis
  recrystallizationClosed : D.recrystallization

def DiageneticProcessesClosed (D : DiageneticProcessesPackage) : Prop :=
  D.compaction ∧ D.cementation ∧ D.dissolution ∧ D.authigenesis ∧ D.recrystallization

theorem diagenetic_processes_closed_from_evidence (D : DiageneticProcessesPackage) (E : DiageneticProcessesEvidence D) : DiageneticProcessesClosed D := by
  exact And.intro E.compactionClosed (And.intro E.cementationClosed (And.intro E.dissolutionClosed (And.intro E.authigenesisClosed E.recrystallizationClosed)))

end EarthSciencePetrologySedimentaryCanonicalLaneLean
end HautevilleHouse