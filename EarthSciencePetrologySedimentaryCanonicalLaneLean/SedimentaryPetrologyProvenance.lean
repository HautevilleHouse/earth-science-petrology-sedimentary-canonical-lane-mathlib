import HautevilleHouse.EarthSciencePetrologySedimentaryCanonicalLaneLean.SedimentaryPetrologyAdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologySedimentaryCanonicalLaneLean

structure ProvenancePackage where
  sourceRockType : Prop
  weatheringTransport : Prop
  depositionalEnvironment : Prop
  tectonicSetting : Prop

structure ProvenanceEvidence (P : ProvenancePackage) where
  sourceRockTypeClosed : P.sourceRockType
  weatheringTransportClosed : P.weatheringTransport
  depositionalEnvironmentClosed : P.depositionalEnvironment
  tectonicSettingClosed : P.tectonicSetting

def ProvenanceClosed (P : ProvenancePackage) : Prop :=
  P.sourceRockType ∧ P.weatheringTransport ∧ P.depositionalEnvironment ∧ P.tectonicSetting

theorem provenance_closed_from_evidence (P : ProvenancePackage) (E : ProvenanceEvidence P) :
    ProvenanceClosed P := by
  exact And.intro E.sourceRockTypeClosed
    (And.intro E.weatheringTransportClosed
      (And.intro E.depositionalEnvironmentClosed E.tectonicSettingClosed))

end EarthSciencePetrologySedimentaryCanonicalLaneLean
end HautevilleHouse