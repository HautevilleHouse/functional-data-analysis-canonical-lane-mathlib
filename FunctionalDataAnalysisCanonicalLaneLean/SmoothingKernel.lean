import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDataAnalysisCanonicalLaneLean

structure SmoothingKernelPackage where
  kernelFunction : Type u
  bandwidthParameter : Type v
  regularizationParameter : Type w
  biasVarianceTradeoff : Prop
  asymptoticNormality : Prop
  optimalBandwidth : Prop

structure SmoothingKernelEvidence (K : SmoothingKernelPackage) where
  biasVarianceTradeoffClosed : K.biasVarianceTradeoff
  asymptoticNormalityClosed : K.asymptoticNormality
  optimalBandwidthClosed : K.optimalBandwidth

def SmoothingKernelClosed (K : SmoothingKernelPackage) : Prop :=
  K.biasVarianceTradeoff ∧ K.asymptoticNormality ∧ K.optimalBandwidth

theorem smoothing_kernel_closed_from_evidence (K : SmoothingKernelPackage) (E : SmoothingKernelEvidence K) :
    SmoothingKernelClosed K := by
  exact And.intro E.biasVarianceTradeoffClosed (And.intro E.asymptoticNormalityClosed E.optimalBandwidthClosed)

end FunctionalDataAnalysisCanonicalLaneLean
end HautevilleHouse
