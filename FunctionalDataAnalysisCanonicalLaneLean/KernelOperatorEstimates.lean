import canonicalLaneMathlib.AdmissibleClass
import FunctionalDataAnalysisCanonicalLaneLean.FunctionalDataAdmissibleClass

namespace HautevilleHouse
namespace FunctionalDataAnalysisCanonicalLaneLean

structure KernelOperatorPackage where
  kernelType : Type u
  integralOperator : Type v
  spectralDecomposition : Prop
  eigenExpansion : Prop
  measurementNoise : Prop
  smoothingRegularization : Prop
  optimalBandwidth : Prop
  convergenceRate : Prop
  minimaxOptimal : Prop
  spectralDecompositionClosed : Prop
  eigenExpansionClosed : Prop
  measurementNoiseClosed : Prop
  smoothingRegularizationClosed : Prop
  optimalBandwidthClosed : Prop
  convergenceRateClosed : Prop
  minimaxOptimalClosed : Prop

structure KernelOperatorEvidence (K : KernelOperatorPackage) where
  spectralDecompositionClosed : K.spectralDecompositionClosed
  eigenExpansionClosed : K.eigenExpansionClosed
  measurementNoiseClosed : K.measurementNoiseClosed
  smoothingRegularizationClosed : K.smoothingRegularizationClosed
  optimalBandwidthClosed : K.optimalBandwidthClosed
  convergenceRateClosed : K.convergenceRateClosed
  minimaxOptimalClosed : K.minimaxOptimalClosed

def KernelOperatorEstimateClosed (K : KernelOperatorPackage) : Prop :=
  K.spectralDecomposition ∧ K.eigenExpansion ∧ K.measurementNoise ∧
  K.smoothingRegularization ∧ K.optimalBandwidth ∧ K.convergenceRate ∧ K.minimaxOptimal

theorem kernel_operator_estimate_closed_from_evidence (K : KernelOperatorPackage) (E : KernelOperatorEvidence K) :
    KernelOperatorEstimateClosed K := by
  exact And.intro E.spectralDecompositionClosed
    (And.intro E.eigenExpansionClosed
      (And.intro E.measurementNoiseClosed
        (And.intro E.smoothingRegularizationClosed
          (And.intro E.optimalBandwidthClosed
            (And.intro E.convergenceRateClosed E.minimaxOptimalClosed)))))

end FunctionalDataAnalysisCanonicalLaneLean
end HautevilleHouse
