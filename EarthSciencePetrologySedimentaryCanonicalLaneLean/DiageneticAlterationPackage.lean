import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologySedimentaryCanonicalLaneLean

structure DiageneticAlterationPackage where
  compactionHistory : Prop
  cementationEvents : Prop
  dissolutionFeatures : Prop
  authigenicMineralGrowth : Prop
  porosityPermeabilityEvolution : Prop
  burialHistory : Prop
  fluidFlowRegime : Prop

structure DiageneticAlterationEvidence (D : DiageneticAlterationPackage) where
  compactionHistoryClosed : D.compactionHistory
  cementationEventsClosed : D.cementationEvents
  dissolutionFeaturesClosed : D.dissolutionFeatures
  authigenicMineralGrowthClosed : D.authigenicMineralGrowth
  porosityPermeabilityEvolutionClosed : D.porosityPermeabilityEvolution
  burialHistoryClosed : D.burialHistory
  fluidFlowRegimeClosed : D.fluidFlowRegime

def DiageneticAlterationClosed (D : DiageneticAlterationPackage) : Prop :=
  D.compactionHistory ∧ D.cementationEvents ∧ D.dissolutionFeatures ∧
  D.authigenicMineralGrowth ∧ D.porosityPermeabilityEvolution ∧
  D.burialHistory ∧ D.fluidFlowRegime

theorem diagenetic_alteration_closed_from_evidence (D : DiageneticAlterationPackage)
    (E : DiageneticAlterationEvidence D) : DiageneticAlterationClosed D := by
  exact And.intro E.compactionHistoryClosed
    (And.intro E.cementationEventsClosed
      (And.intro E.dissolutionFeaturesClosed
        (And.intro E.authigenicMineralGrowthClosed
          (And.intro E.porosityPermeabilityEvolutionClosed
            (And.intro E.burialHistoryClosed
              E.fluidFlowRegimeClosed)))))

end EarthSciencePetrologySedimentaryCanonicalLaneLean
end HautevilleHouse