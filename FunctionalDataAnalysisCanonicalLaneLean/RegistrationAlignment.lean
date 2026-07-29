import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDataAnalysisCanonicalLaneLean

structure RegistrationAlignmentPackage where
  warpingFunction : Type u
  templateFunction : Type v
  alignmentCriterion : Prop
  identifiabilityUnderWarp : Prop
  consistencyOfEstimator : Prop

structure RegistrationAlignmentEvidence (R : RegistrationAlignmentPackage) where
  alignmentCriterionClosed : R.alignmentCriterion
  identifiabilityUnderWarpClosed : R.identifiabilityUnderWarp
  consistencyOfEstimatorClosed : R.consistencyOfEstimator

def RegistrationAlignmentClosed (R : RegistrationAlignmentPackage) : Prop :=
  R.alignmentCriterion ∧ R.identifiabilityUnderWarp ∧ R.consistencyOfEstimator

theorem registration_alignment_closed_from_evidence (R : RegistrationAlignmentPackage) (E : RegistrationAlignmentEvidence R) :
    RegistrationAlignmentClosed R := by
  exact And.intro E.alignmentCriterionClosed (And.intro E.identifiabilityUnderWarpClosed E.consistencyOfEstimatorClosed)

end FunctionalDataAnalysisCanonicalLaneLean
end HautevilleHouse
