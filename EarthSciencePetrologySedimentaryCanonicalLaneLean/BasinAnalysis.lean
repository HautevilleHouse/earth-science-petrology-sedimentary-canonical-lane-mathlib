import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologySedimentaryCanonicalLaneLean

structure BasinAnalysisPackage where
  subsidenceHistory : Prop
  sedimentSupply : Prop
  seaLevelChanges : Prop
  tectonicSetting : Prop
  basinFillArchitecture : Prop

structure BasinAnalysisEvidence (B : BasinAnalysisPackage) where
  subsidenceHistoryClosed : B.subsidenceHistory
  sedimentSupplyClosed : B.sedimentSupply
  seaLevelChangesClosed : B.seaLevelChanges
  tectonicSettingClosed : B.tectonicSetting
  basinFillArchitectureClosed : B.basinFillArchitecture

def BasinAnalysisClosed (B : BasinAnalysisPackage) : Prop :=
  B.subsidenceHistory ∧ B.sedimentSupply ∧ B.seaLevelChanges ∧ B.tectonicSetting ∧ B.basinFillArchitecture

theorem basin_analysis_closed_from_evidence (B : BasinAnalysisPackage) (E : BasinAnalysisEvidence B) : BasinAnalysisClosed B := by
  exact And.intro E.subsidenceHistoryClosed (And.intro E.sedimentSupplyClosed (And.intro E.seaLevelChangesClosed (And.intro E.tectonicSettingClosed E.basinFillArchitectureClosed)))

end EarthSciencePetrologySedimentaryCanonicalLaneLean
end HautevilleHouse