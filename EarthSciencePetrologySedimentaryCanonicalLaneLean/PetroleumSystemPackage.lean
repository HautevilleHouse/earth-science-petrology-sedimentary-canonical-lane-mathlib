import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologySedimentaryCanonicalLaneLean

structure PetroleumSystemPackage where
  sourceRockEvaluation : Prop
  reservoirQuality : Prop
  sealEfficiency : Prop
  trapGeometry : Prop
  migrationPathways : Prop
  timingOfGeneration : Prop
  hydrocarbonCharge : Prop

structure PetroleumSystemEvidence (P : PetroleumSystemPackage) where
  sourceRockEvaluationClosed : P.sourceRockEvaluation
  reservoirQualityClosed : P.reservoirQuality
  sealEfficiencyClosed : P.sealEfficiency
  trapGeometryClosed : P.trapGeometry
  migrationPathwaysClosed : P.migrationPathways
  timingOfGenerationClosed : P.timingOfGeneration
  hydrocarbonChargeClosed : P.hydrocarbonCharge

def PetroleumSystemClosed (P : PetroleumSystemPackage) : Prop :=
  P.sourceRockEvaluation ∧ P.reservoirQuality ∧ P.sealEfficiency ∧
  P.trapGeometry ∧ P.migrationPathways ∧ P.timingOfGeneration ∧
  P.hydrocarbonCharge

theorem petroleum_system_closed_from_evidence (P : PetroleumSystemPackage)
    (E : PetroleumSystemEvidence P) : PetroleumSystemClosed P := by
  exact And.intro E.sourceRockEvaluationClosed
    (And.intro E.reservoirQualityClosed
      (And.intro E.sealEfficiencyClosed
        (And.intro E.trapGeometryClosed
          (And.intro E.migrationPathwaysClosed
            (And.intro E.timingOfGenerationClosed
              E.hydrocarbonChargeClosed)))))

end EarthSciencePetrologySedimentaryCanonicalLaneLean
end HautevilleHouse