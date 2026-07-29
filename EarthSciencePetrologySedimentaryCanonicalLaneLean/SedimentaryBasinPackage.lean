import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologySedimentaryCanonicalLaneLean

structure SedimentaryBasinPackage where
  basinName : String
  tectonicSetting : Prop
  basinGeometry : Prop
  sedimentSupply : Prop
  subsidenceHistory : Prop
  accommodationSpace : Prop
  sedimentaryFilling : Prop

structure SedimentaryBasinEvidence (B : SedimentaryBasinPackage) where
  tectonicSettingClosed : B.tectonicSetting
  basinGeometryClosed : B.basinGeometry
  sedimentSupplyClosed : B.sedimentSupply
  subsidenceHistoryClosed : B.subsidenceHistory
  accommodationSpaceClosed : B.accommodationSpace
  sedimentaryFillingClosed : B.sedimentaryFilling

def SedimentaryBasinClosed (B : SedimentaryBasinPackage) : Prop :=
  B.tectonicSetting ∧ B.basinGeometry ∧ B.sedimentSupply ∧
  B.subsidenceHistory ∧ B.accommodationSpace ∧ B.sedimentaryFilling

theorem sedimentary_basin_closed_from_evidence (B : SedimentaryBasinPackage)
    (E : SedimentaryBasinEvidence B) : SedimentaryBasinClosed B := by
  exact And.intro E.tectonicSettingClosed
    (And.intro E.basinGeometryClosed
      (And.intro E.sedimentSupplyClosed
        (And.intro E.subsidenceHistoryClosed
          (And.intro E.accommodationSpaceClosed
            E.sedimentaryFillingClosed))))

end EarthSciencePetrologySedimentaryCanonicalLaneLean
end HautevilleHouse