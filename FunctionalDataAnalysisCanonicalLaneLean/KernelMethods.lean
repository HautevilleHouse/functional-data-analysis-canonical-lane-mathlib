import FunctionalDataAnalysisCanonicalLaneLean.FunctionalDataAnalysisAdmissibleClass

namespace HautevilleHouse
namespace FunctionalDataAnalysisCanonicalLaneLean

structure KernelMethodsPackage where
  dataSpace : FDASpace
  kernelFunction : dataSpace.carrier → dataSpace.carrier → ℝ
  positiveDefinite : Prop
  representerTheorem : Prop
  smoothingOperator : Prop

structure KernelMethodsEvidence (K : KernelMethodsPackage) where
  positiveDefiniteClosed : K.positiveDefinite
  representerTheoremClosed : K.representerTheorem
  smoothingOperatorClosed : K.smoothingOperator

def KernelMethodsClosed (K : KernelMethodsPackage) : Prop :=
  K.positiveDefinite ∧ K.representerTheorem ∧ K.smoothingOperator

theorem kernel_methods_closed_from_evidence (K : KernelMethodsPackage) (E : KernelMethodsEvidence K) :
    KernelMethodsClosed K := by
  exact And.intro E.positiveDefiniteClosed (And.intro E.representerTheoremClosed E.smoothingOperatorClosed)

end FunctionalDataAnalysisCanonicalLaneLean
end HautevilleHouse