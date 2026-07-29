import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologySedimentaryCanonicalLaneLean

structure SedimentaryRockSample where
  sampleId : String
  composition : String
  texture : String
  provenance : String
  diageneticHistory : String
  conclusion : mineralCompositionIdentified

structure SedimentaryAdmittedObject where
  sample : SedimentaryRockSample
  depositionalEnvironmentReconstructed : Prop
  provenanceInterpreted : Prop
  diageneticPathClosed : Prop
  conclusion : depositionalEnvironmentReconstructed ∧ provenanceInterpreted ∧ diageneticPathClosed

end EarthSciencePetrologySedimentaryCanonicalLaneLean
end HautevilleHouse