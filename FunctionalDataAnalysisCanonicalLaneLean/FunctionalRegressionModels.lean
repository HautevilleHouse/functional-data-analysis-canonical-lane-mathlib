import canonicalLaneMathlib.AdmissibleClass
import FunctionalDataAnalysisCanonicalLaneLean.FunctionalDataAdmissibleClass
import FunctionalDataAnalysisCanonicalLaneLean.KernelOperatorEstimates

namespace HautevilleHouse
namespace FunctionalDataAnalysisCanonicalLaneLean

structure FunctionalRegressionPackage (K : KernelOperatorPackage) where
  regressionOperator : Prop
  predictionConsistency : Prop
  minimaxRate : Prop
  hypothesisSpaceCompactness : Prop
  regressionOperatorClosed : Prop
  predictionConsistencyClosed : Prop
  minimaxRateClosed : Prop
  hypothesisSpaceCompactnessClosed : Prop

structure FunctionalRegressionEvidence {K : KernelOperatorPackage}
    (R : FunctionalRegressionPackage K) where
  regressionOperatorClosed : R.regressionOperatorClosed
  predictionConsistencyClosed : R.predictionConsistencyClosed
  minimaxRateClosed : R.minimaxRateClosed
  hypothesisSpaceCompactnessClosed : R.hypothesisSpaceCompactnessClosed

def FunctionalRegressionClosed {K : KernelOperatorPackage}
    (R : FunctionalRegressionPackage K) : Prop :=
  R.regressionOperator ∧ R.predictionConsistency ∧ R.minimaxRate ∧ R.hypothesisSpaceCompactness

theorem functional_regression_closed_from_evidence
    {K : KernelOperatorPackage} (R : FunctionalRegressionPackage K)
    (E : FunctionalRegressionEvidence R) : FunctionalRegressionClosed R := by
  exact And.intro E.regressionOperatorClosed
    (And.intro E.predictionConsistencyClosed
      (And.intro E.minimaxRateClosed E.hypothesisSpaceCompactnessClosed))

end FunctionalDataAnalysisCanonicalLaneLean
end HautevilleHouse
