import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDataAnalysisCanonicalLaneLean

def ConstrainedFunctionalDataAnalysisClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_functional_data_analysis_endgame (A : AdmissibleClass) :
    ConstrainedFunctionalDataAnalysisClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end FunctionalDataAnalysisCanonicalLaneLean
end HautevilleHouse