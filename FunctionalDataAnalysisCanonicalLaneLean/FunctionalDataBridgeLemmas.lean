import canonicalLaneMathlib.AdmissibleClass
import FunctionalDataAnalysisCanonicalLaneLean.FunctionalDataAdmissibleClass

namespace HautevilleHouse
namespace FunctionalDataAnalysisCanonicalLaneLean

def bridgeClosed (A : AdmissibleFunctionalClass) : Prop :=
  FunctionalDataWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleFunctionalClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FunctionalDataAnalysisCanonicalLaneLean
end HautevilleHouse
