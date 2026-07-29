import canonicalLaneMathlib.AdmissibleClass

/-!
# Kernel Regression in Functional Data Analysis

This module defines kernel regression as an admissible-class bridge.
-/

namespace HautevilleHouse
namespace FunctionalDataAnalysisCanonicalLaneLean

structure FunctionalDataObject where
  predictor : List ℝ
  response : List ℝ
  kernelFunction : ℝ → ℝ → ℝ
  bandwidth : ℝ

structure KRadmittedObject where
  object : FunctionalDataObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

structure KernelRegressionPackage (O : KRadmittedObject) where
  hatMatrix : List (List ℝ)
  fittedValues : List ℝ
  bandwidthSelected : Prop
  predictionError : Prop

structure KernelRegressionEvidence {O : KRadmittedObject} (P : KernelRegressionPackage O) where
  bandwidthSelectedClosed : P.bandwidthSelected
  predictionErrorClosed : P.predictionError

def KernelRegressionClosed {O : KRadmittedObject} (P : KernelRegressionPackage O) : Prop :=
  P.bandwidthSelected ∧ P.predictionError

theorem kernel_regression_closed_from_evidence
    {O : KRadmittedObject} (P : KernelRegressionPackage O) (E : KernelRegressionEvidence P) :
    KernelRegressionClosed P := by
  exact And.intro E.bandwidthSelectedClosed E.predictionErrorClosed

end FunctionalDataAnalysisCanonicalLaneLean
end HautevilleHouse