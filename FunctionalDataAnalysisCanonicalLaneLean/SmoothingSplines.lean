import canonicalLaneMathlib.AdmissibleClass

/-!
# Smoothing Splines in Functional Data Analysis

This module defines the smoothing spline construction as an admissible-class bridge.
-/

namespace HautevilleHouse
namespace FunctionalDataAnalysisCanonicalLaneLean

structure FunctionalDataObject where
  observedData : List (ℝ × ℝ)
  smoothingParameter : ℝ
  basisFunctions : List (ℝ → ℝ)
  fittedFunction : ℝ → ℝ

structure FDAAdmittedObject where
  object : FunctionalDataObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

structure SmoothedFitPackage (O : FDAAdmittedObject) where
  penaltyMatrix : ℝ → ℝ → ℝ
  roughnessPenalty : Prop
  smoothFitComputed : Prop
  crossValidationScore : Prop

structure SmoothedFitEvidence {O : FDAAdmittedObject} (P : SmoothedFitPackage O) where
  roughnessPenaltyClosed : P.roughnessPenalty
  smoothFitComputedClosed : P.smoothFitComputed
  crossValidationScoreClosed : P.crossValidationScore

def SmoothedFitClosed {O : FDAAdmittedObject} (P : SmoothedFitPackage O) : Prop :=
  P.roughnessPenalty ∧ P.smoothFitComputed ∧ P.crossValidationScore

theorem smoothed_fit_closed_from_evidence
    {O : FDAAdmittedObject} (P : SmoothedFitPackage O) (E : SmoothedFitEvidence P) :
    SmoothedFitClosed P := by
  exact And.intro E.roughnessPenaltyClosed (And.intro E.smoothFitComputedClosed E.crossValidationScoreClosed)

end FunctionalDataAnalysisCanonicalLaneLean
end HautevilleHouse