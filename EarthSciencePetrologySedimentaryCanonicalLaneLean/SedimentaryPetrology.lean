import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologySedimentaryCanonicalLaneLean

structure SedimentaryRockObject where
  grainSizeDistribution : Prop
  mineralComposition : Prop
  porosity : Prop
  permeability : Prop
  conclusion : mineralComposition ∧ porosity

structure AdmissibleSedimentaryClass where
  object : SedimentaryRockObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def sedimentaryAdmittedClosure (A : AdmissibleSedimentaryClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EarthSciencePetrologySedimentaryCanonicalLaneLean
end HautevilleHouse
