import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FunctionalDataAnalysisCanonicalLaneLean.FdaDataObjects

namespace HautevilleHouse
namespace FunctionalDataAnalysisCanonicalLaneLean

structure HilbertSpaceProjection where
  kernelFunction : FdaSpace → FdaSpace → ℝ
  orthogonalDecomposition : Prop
  projectionIdempotent : Prop
  reproducingKernelHilbertSpace : Prop

structure HilbertSpaceProjectionEvidence (H : HilbertSpaceProjection) where
  orthogonalDecompositionClosed : H.orthogonalDecomposition
  projectionIdempotentClosed : H.projectionIdempotent
  reproducingKernelHilbertSpaceClosed : H.reproducingKernelHilbertSpace

def HilbertSpaceProjectionClosed (H : HilbertSpaceProjection) : Prop :=
  H.orthogonalDecomposition ∧ H.projectionIdempotent ∧ H.reproducingKernelHilbertSpace

theorem hilbert_space_projection_closed_from_evidence (H : HilbertSpaceProjection) (E : HilbertSpaceProjectionEvidence H) : HilbertSpaceProjectionClosed H := by
  exact And.intro E.orthogonalDecompositionClosed (And.intro E.projectionIdempotentClosed E.reproducingKernelHilbertSpaceClosed)

end FunctionalDataAnalysisCanonicalLaneLean
end HautevilleHouse
