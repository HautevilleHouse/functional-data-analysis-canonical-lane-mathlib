import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDataAnalysisCanonicalLaneLean

structure FunctionalLinearModel where
  slopeFunction : Type u
  intercept : Type v
  linearOperator : Type w
  modelIdentifiability : Prop
  estimationMethod : Prop
  consistency : Prop
  asymptoticNormality : Prop
  modelIdentifiabilityTerm : modelIdentifiability
  estimationMethodTerm : estimationMethod
  consistencyTerm : consistency
  asymptoticNormalityTerm : asymptoticNormality

structure FunctionalLinearModelEvidence (M : FunctionalLinearModel) where
  modelIdentifiabilityClosed : M.modelIdentifiability
  estimationMethodClosed : M.estimationMethod
  consistencyClosed : M.consistency
  asymptoticNormalityClosed : M.asymptoticNormality

def FunctionalLinearModelClosed (M : FunctionalLinearModel) : Prop :=
  M.modelIdentifiability ∧ M.estimationMethod ∧ M.consistency ∧ M.asymptoticNormality

theorem functional_linear_model_closed_from_evidence (M : FunctionalLinearModel) (E : FunctionalLinearModelEvidence M) : FunctionalLinearModelClosed M := by
  exact And.intro E.modelIdentifiabilityClosed (And.intro E.estimationMethodClosed (And.intro E.consistencyClosed E.asymptoticNormalityClosed))

end FunctionalDataAnalysisCanonicalLaneLean
end HautevilleHouse