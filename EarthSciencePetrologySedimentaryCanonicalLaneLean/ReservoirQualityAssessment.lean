import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologySedimentaryCanonicalLaneLean

structure ReservoirQualityPackage where
  porosity : Prop
  permeability : Prop
  poreThroatGeometry : Prop
  petrophysicalProperties : Prop
  diageneticControls : Prop

def ReservoirQualityClosed (R : ReservoirQualityPackage) : Prop :=
  R.porosity ∧ R.permeability ∧ R.poreThroatGeometry ∧ R.petrophysicalProperties ∧ R.diageneticControls

structure ReservoirQualityEvidence (R : ReservoirQualityPackage) where
  porosityClosed : R.porosity
  permeabilityClosed : R.permeability
  poreThroatGeometryClosed : R.poreThroatGeometry
  petrophysicalPropertiesClosed : R.petrophysicalProperties
  diageneticControlsClosed : R.diageneticControls

theorem reservoir_quality_closed_from_evidence (R : ReservoirQualityPackage) (E : ReservoirQualityEvidence R) : ReservoirQualityClosed R := by
  exact And.intro E.porosityClosed (And.intro E.permeabilityClosed (And.intro E.poreThroatGeometryClosed (And.intro E.petrophysicalPropertiesClosed E.diageneticControlsClosed)))

end EarthSciencePetrologySedimentaryCanonicalLaneLean
end HautevilleHouse