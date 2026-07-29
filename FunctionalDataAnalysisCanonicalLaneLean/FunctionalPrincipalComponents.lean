import canonicalLaneMathlib.AdmissibleClass

/-!
# Functional Principal Components Analysis

This module defines the functional PCA decomposition as an admissible-class bridge.
-/

namespace HautevilleHouse
namespace FunctionalDataAnalysisCanonicalLaneLean

structure FunctionalDataObject where
  observedFunctions : List (ℝ → ℝ)
  meanFunction : ℝ → ℝ
  covarianceKernel : ℝ → ℝ → ℝ

structure FPCAAdmittedObject where
  object : FunctionalDataObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

structure FPCAPackage (O : FPCAAdmittedObject) where
  eigenfunctions : List (ℝ → ℝ)
  eigenvalues : List ℝ
  varianceExplained : Prop
  scoresComputed : Prop

structure FPCAEvidence {O : FPCAAdmittedObject} (P : FPCAPackage O) where
  varianceExplainedClosed : P.varianceExplained
  scoresComputedClosed : P.scoresComputed

def FPCAClosed {O : FPCAAdmittedObject} (P : FPCAPackage O) : Prop :=
  P.varianceExplained ∧ P.scoresComputed

theorem fpca_closed_from_evidence
    {O : FPCAAdmittedObject} (P : FPCAPackage O) (E : FPCAEvidence P) :
    FPCAClosed P := by
  exact And.intro E.varianceExplainedClosed E.scoresComputedClosed

end FunctionalDataAnalysisCanonicalLaneLean
end HautevilleHouse