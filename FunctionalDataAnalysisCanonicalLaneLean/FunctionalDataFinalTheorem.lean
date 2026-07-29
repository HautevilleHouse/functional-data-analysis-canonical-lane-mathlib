import canonicalLaneMathlib.AdmissibleClass
import FunctionalDataAnalysisCanonicalLaneLean.FunctionalDataGateLemmas

namespace HautevilleHouse
namespace FunctionalDataAnalysisCanonicalLaneLean

def ConstrainedFunctionalDataAnalysisClosure (A : AdmissibleFunctionalClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_functional_data_analysis_endgame (A : AdmissibleFunctionalClass) :
    ConstrainedFunctionalDataAnalysisClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FunctionalDataAnalysisCanonicalLaneLean
end HautevilleHouse
