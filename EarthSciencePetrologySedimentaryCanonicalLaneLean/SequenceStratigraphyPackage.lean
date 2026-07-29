import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologySedimentaryCanonicalLaneLean

structure SequenceStratigraphyPackage where
  baseLevelChanges : Prop
  systemsTracts : Prop
  sequenceBoundaries : Prop
  parasequences : Prop
  stackingPatterns : Prop
  chronostratigraphicFramework : Prop

structure SequenceStratigraphyEvidence (S : SequenceStratigraphyPackage) where
  baseLevelChangesClosed : S.baseLevelChanges
  systemsTractsClosed : S.systemsTracts
  sequenceBoundariesClosed : S.sequenceBoundaries
  parasequencesClosed : S.parasequences
  stackingPatternsClosed : S.stackingPatterns
  chronostratigraphicFrameworkClosed : S.chronostratigraphicFramework

def SequenceStratigraphyClosed (S : SequenceStratigraphyPackage) : Prop :=
  S.baseLevelChanges ∧ S.systemsTracts ∧ S.sequenceBoundaries ∧
  S.parasequences ∧ S.stackingPatterns ∧ S.chronostratigraphicFramework

theorem sequence_stratigraphy_closed_from_evidence (S : SequenceStratigraphyPackage)
    (E : SequenceStratigraphyEvidence S) : SequenceStratigraphyClosed S := by
  exact And.intro E.baseLevelChangesClosed
    (And.intro E.systemsTractsClosed
      (And.intro E.sequenceBoundariesClosed
        (And.intro E.parasequencesClosed
          (And.intro E.stackingPatternsClosed
            E.chronostratigraphicFrameworkClosed))))

end EarthSciencePetrologySedimentaryCanonicalLaneLean
end HautevilleHouse