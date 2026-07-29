import FunctionalDataAnalysisCanonicalLaneLean.KernelMethods

namespace HautevilleHouse
namespace FunctionalDataAnalysisCanonicalLaneLean

structure FunctionalRegistrationPackage where
  templateSpace : FDASpace
  warpingFunctions : Type
  alignmentCriterion : Prop
  warpBoundary : Prop
  registeredProcess : Prop

structure FunctionalRegistrationEvidence (R : FunctionalRegistrationPackage) where
  alignmentCriterionClosed : R.alignmentCriterion
  warpBoundaryClosed : R.warpBoundary
  registeredProcessClosed : R.registeredProcess

def FunctionalRegistrationClosed (R : FunctionalRegistrationPackage) : Prop :=
  R.alignmentCriterion ∧ R.warpBoundary ∧ R.registeredProcess

theorem functional_registration_closed_from_evidence (R : FunctionalRegistrationPackage) (E : FunctionalRegistrationEvidence R) :
    FunctionalRegistrationClosed R := by
  exact And.intro E.alignmentCriterionClosed (And.intro E.warpBoundaryClosed E.registeredProcessClosed)

end FunctionalDataAnalysisCanonicalLaneLean
end HautevilleHouse