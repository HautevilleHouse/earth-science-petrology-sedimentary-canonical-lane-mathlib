import HautevilleHouse.EarthSciencePetrologySedimentaryCanonicalLaneLean.SedimentaryPetrologyAdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologySedimentaryCanonicalLaneLean

structure BasinAnalysisPackage where
  subsidenceHistory : Prop
  sedimentAccumulation : Prop
  paleocurrents : Prop
  basinGeometry : Prop
  tectonicControls : Prop

structure BasinAnalysisEvidence (B : BasinAnalysisPackage) where
  subsidenceHistoryClosed : B.subsidenceHistory
  sedimentAccumulationClosed : B.sedimentAccumulation
  paleocurrentsClosed : B.paleocurrents
  basinGeometryClosed : B.basinGeometry
  tectonicControlsClosed : B.tectonicControls

def BasinAnalysisClosed (B : BasinAnalysisPackage) : Prop :=
  B.subsidenceHistory ∧ B.sedimentAccumulation ∧ B.paleocurrents ∧ B.basinGeometry ∧ B.tectonicControls

theorem basin_analysis_closed_from_evidence (B : BasinAnalysisPackage) (E : BasinAnalysisEvidence B) :
    BasinAnalysisClosed B := by
  exact And.intro E.subsidenceHistoryClosed
    (And.intro E.sedimentAccumulationClosed
      (And.intro E.paleocurrentsClosed
        (And.intro E.basinGeometryClosed E.tectonicControlsClosed)))

end EarthSciencePetrologySedimentaryCanonicalLaneLean
end HautevilleHouse