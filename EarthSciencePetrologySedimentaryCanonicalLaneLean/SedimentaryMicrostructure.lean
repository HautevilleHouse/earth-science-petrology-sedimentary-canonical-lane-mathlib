import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologySedimentaryCanonicalLaneLean

structure SedimentaryMicrostructurePackage where
  porosity : Prop
  permeability : Prop
  grainSizeDistribution : Prop
  cementation : Prop
  compaction : Prop

structure SedimentaryMicrostructureEvidence (M : SedimentaryMicrostructurePackage) where
  porosityClosed : M.porosity
  permeabilityClosed : M.permeability
  grainSizeDistributionClosed : M.grainSizeDistribution
  cementationClosed : M.cementation
  compactionClosed : M.compaction

def SedimentaryMicrostructureClosed (M : SedimentaryMicrostructurePackage) : Prop :=
  M.porosity ∧ M.permeability ∧ M.grainSizeDistribution ∧ M.cementation ∧ M.compaction

theorem sedimentary_microstructure_closed_from_evidence (M : SedimentaryMicrostructurePackage) (E : SedimentaryMicrostructureEvidence M) : SedimentaryMicrostructureClosed M := by
  exact And.intro E.porosityClosed (And.intro E.permeabilityClosed (And.intro E.grainSizeDistributionClosed (And.intro E.cementationClosed E.compactionClosed)))

end EarthSciencePetrologySedimentaryCanonicalLaneLean
end HautevilleHouse