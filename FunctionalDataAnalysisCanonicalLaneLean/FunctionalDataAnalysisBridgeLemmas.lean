import FunctionalDataAnalysisCanonicalLaneLean.FunctionalDataAnalysisAdmissibleClass

namespace HautevilleHouse
namespace FunctionalDataAnalysisCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  FDAWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end FunctionalDataAnalysisCanonicalLaneLean
end HautevilleHouse