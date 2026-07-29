import EarthSciencePetrologySedimentaryCanonicalLaneLean.MineralDepositFormalization

namespace HautevilleHouse
namespace EarthSciencePetrologySedimentaryCanonicalLaneLean

structure BasinAnalysisPackage where
  basinType : String
  subsidenceHistory : Prop
  sedimentSupplyModel : Prop

def BasinAnalysisClosed (B : BasinAnalysisPackage) : Prop :=
  B.subsidenceHistory ∧ B.sedimentSupplyModel

theorem basin_analysis_closed_evidence (B : BasinAnalysisPackage)
    (hSubs : B.subsidenceHistory) (hSupply : B.sedimentSupplyModel) :
    BasinAnalysisClosed B := by
  exact And.intro hSubs hSupply

end EarthSciencePetrologySedimentaryCanonicalLaneLean
end HautevilleHouse