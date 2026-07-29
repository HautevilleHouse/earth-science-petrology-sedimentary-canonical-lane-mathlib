import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologySedimentaryCanonicalLaneLean

structure DiagenesisPackage where
  compaction : Prop
  cementation : Prop
  dissolution : Prop
  authigenesis : Prop
  porosityEvolution : Prop

def DiagenesisClosed (D : DiagenesisPackage) : Prop :=
  D.compaction ∧ D.cementation ∧ D.dissolution ∧ D.authigenesis ∧ D.porosityEvolution

structure DiagenesisEvidence (D : DiagenesisPackage) where
  compactionClosed : D.compaction
  cementationClosed : D.cementation
  dissolutionClosed : D.dissolution
  authigenesisClosed : D.authigenesis
  porosityEvolutionClosed : D.porosityEvolution

theorem diagenesis_closed_from_evidence (D : DiagenesisPackage) (E : DiagenesisEvidence D) : DiagenesisClosed D := by
  exact And.intro E.compactionClosed (And.intro E.cementationClosed (And.intro E.dissolutionClosed (And.intro E.authigenesisClosed E.porosityEvolutionClosed)))

end EarthSciencePetrologySedimentaryCanonicalLaneLean
end HautevilleHouse