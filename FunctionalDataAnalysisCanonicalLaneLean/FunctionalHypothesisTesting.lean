import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDataAnalysisCanonicalLaneLean

structure FunctionalHypothesisTest where
  nullHypothesis : Prop
  testStatistic : Type u
  rejectionRegion : Type v
  significanceLevel : Prop
  powerFunction : Prop
  pointwiseLevel : Prop
  significanceLevelTerm : significanceLevel
  powerFunctionTerm : powerFunction
  pointwiseLevelTerm : pointwiseLevel

structure FunctionalHypothesisTestingEvidence (H : FunctionalHypothesisTest) where
  significanceLevelClosed : H.significanceLevel
  powerFunctionClosed : H.powerFunction
  pointwiseLevelClosed : H.pointwiseLevel

def FunctionalHypothesisTestingClosed (H : FunctionalHypothesisTest) : Prop :=
  H.significanceLevel ∧ H.powerFunction ∧ H.pointwiseLevel

theorem functional_hypothesis_testing_closed_from_evidence (H : FunctionalHypothesisTest) (E : FunctionalHypothesisTestingEvidence H) : FunctionalHypothesisTestingClosed H := by
  exact And.intro E.significanceLevelClosed (And.intro E.powerFunctionClosed E.pointwiseLevelClosed)

end FunctionalDataAnalysisCanonicalLaneLean
end HautevilleHouse