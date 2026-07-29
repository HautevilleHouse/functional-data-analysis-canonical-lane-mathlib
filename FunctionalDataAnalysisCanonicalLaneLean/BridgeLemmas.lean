import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FunctionalDataAnalysisCanonicalLaneLean.FunctionalClustering

namespace HautevilleHouse
namespace FunctionalDataAnalysisCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FdaCompleteSpace A.space

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  exact A.object.functionalDataComplete

end FunctionalDataAnalysisCanonicalLaneLean
end HautevilleHouse
