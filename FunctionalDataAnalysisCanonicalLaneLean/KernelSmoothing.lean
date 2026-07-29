import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDataAnalysisCanonicalLaneLean

structure KernelSmoothingOperator where
  kernel : Type u
  bandwidth : Type v
  smoothingKernel : Prop
  bandwidthSelection : Prop
  asymptoticBias : Prop
  asymptoticVariance : Prop
  smoothingKernelTerm : smoothingKernel
  bandwidthSelectionTerm : bandwidthSelection
  asymptoticBiasTerm : asymptoticBias
  asymptoticVarianceTerm : asymptoticVariance

structure KernelSmoothingEvidence (K : KernelSmoothingOperator) where
  smoothingKernelClosed : K.smoothingKernel
  bandwidthSelectionClosed : K.bandwidthSelection
  asymptoticBiasClosed : K.asymptoticBias
  asymptoticVarianceClosed : K.asymptoticVariance

def KernelSmoothingClosed (K : KernelSmoothingOperator) : Prop :=
  K.smoothingKernel ∧ K.bandwidthSelection ∧ K.asymptoticBias ∧ K.asymptoticVariance

theorem kernel_smoothing_closed_from_evidence (K : KernelSmoothingOperator) (E : KernelSmoothingEvidence K) : KernelSmoothingClosed K := by
  exact And.intro E.smoothingKernelClosed (And.intro E.bandwidthSelectionClosed (And.intro E.asymptoticBiasClosed E.asymptoticVarianceClosed))

end FunctionalDataAnalysisCanonicalLaneLean
end HautevilleHouse