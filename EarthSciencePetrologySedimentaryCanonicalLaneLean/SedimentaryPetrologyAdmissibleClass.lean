import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologySedimentaryCanonicalLaneLean

structure SedimentaryRock where
  carrier : Type
  poreSpace : TopologicalSpace carrier
  mineralogy : Prop
  texture : Prop
  diageneticHistory : Prop

structure SedimentaryAdmittedObject where
  rock : SedimentaryRock
  provenance : Prop
  sedimentaryStructure : Prop
  conclusion : provenance ∧ sedimentaryStructure

structure SedimentaryAdmissibleClass where
  object : SedimentaryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : SedimentaryAdmissibleClass) : Prop :=
  SedimentaryWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

def SedimentaryWitnessClosed (O : SedimentaryAdmittedObject) : Prop :=
  O.conclusion

end EarthSciencePetrologySedimentaryCanonicalLaneLean
end HautevilleHouse