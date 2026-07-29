import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FunctionalDataAnalysisCanonicalLaneLean.FunctionalPCA

namespace HautevilleHouse
namespace FunctionalDataAnalysisCanonicalLaneLean

structure RegressionEstimatorPackage where
  functionalResponse : Type u
  predictorSpace : FdaSpace
  regressionOperator : FdaSpace → functionalResponse
  consistencyAsymptotic : Prop
  convergenceRate : Prop
  optimalityInMinimax : Prop

structure RegressionEstimatorEvidence (R : RegressionEstimatorPackage) where
  consistencyAsymptoticClosed : R.consistencyAsymptotic
  convergenceRateClosed : R.convergenceRate
  optimalityInMinimaxClosed : R.optimalityInMinimax

def RegressionEstimatorClosed (R : RegressionEstimatorPackage) : Prop :=
  R.consistencyAsymptotic ∧ R.convergenceRate ∧ R.optimalityInMinimax

theorem regression_estimator_closed_from_evidence (R : RegressionEstimatorPackage) (E : RegressionEstimatorEvidence R) : RegressionEstimatorClosed R := by
  exact And.intro E.consistencyAsymptoticClosed (And.intro E.convergenceRateClosed E.optimalityInMinimaxClosed)

end FunctionalDataAnalysisCanonicalLaneLean
end HautevilleHouse
