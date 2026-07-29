import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EarthSciencePetrologySedimentaryCanonicalLaneLean

structure TheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  classicalBoundary : String
  manifoldConstrainedStatement : String
  certificateLane : String
  carriedRemainder : String

def sourceTheoremStatement : TheoremStatement :=
  { sourceKey := "earth-science-petrology-sedimentary-canonical-lane",
    theoremName := "Sedimentary Closure Theorem",
    theoremObject := "Admissible sedimentary object with depositional environment, grain size distribution, and sorting constraints",
    classicalBoundary := "Remaining open: additional diagenetic processes, provenance details, and tectonic context",
    manifoldConstrainedStatement := "The sedimentary constraints are closed under admissible class closure",
    certificateLane := "sedimentary_constrained",
    carriedRemainder := "classical source boundary carried as carriedRemainder"
  }

def sourceRepository : String := "earth-science-petrology-sedimentary-canonical-lane"

theorem theorem_statement_sourceKey_checked :
    sourceTheoremStatement.sourceKey = sourceRepository := rfl

end EarthSciencePetrologySedimentaryCanonicalLaneLean
end HautevilleHouse