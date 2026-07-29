import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologySedimentaryCanonicalLaneLean

structure SedimentaryAdmittedObject where
  formation : Type
  depositionalEnvironment : Prop
  grainSizeDistribution : Prop
  sorting : Prop
  conclusion : depositionalEnvironment ∧ grainSizeDistribution ∧ sorting

structure AdmissibleClass where
  object : SedimentaryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.depositionalEnvironment ∧ A.object.grainSizeDistribution ∧ A.object.sorting) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EarthSciencePetrologySedimentaryCanonicalLaneLean
end HautevilleHouse