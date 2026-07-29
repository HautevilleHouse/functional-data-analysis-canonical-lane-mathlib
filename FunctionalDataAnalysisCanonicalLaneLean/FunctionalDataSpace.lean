import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDataAnalysisCanonicalLaneLean

structure FunctionalDataSpace where
  curveSpace : Type u
  metric : Type v
  topology : TopologicalSpace curveSpace
  registeredFunctions : Prop
  boundedVariation : Prop
  smoothness : Prop
  registeredFunctionsTerm : registeredFunctions
  boundedVariationTerm : boundedVariation
  smoothnessTerm : smoothness

structure FunctionalDataEvidence (F : FunctionalDataSpace) where
  registeredFunctionsClosed : F.registeredFunctions
  boundedVariationClosed : F.boundedVariation
  smoothnessClosed : F.smoothness

def FunctionalDataClosed (F : FunctionalDataSpace) : Prop :=
  F.registeredFunctions ∧ F.boundedVariation ∧ F.smoothness

theorem functional_data_closed_from_evidence (F : FunctionalDataSpace) (E : FunctionalDataEvidence F) : FunctionalDataClosed F := by
  exact And.intro E.registeredFunctionsClosed (And.intro E.boundedVariationClosed E.smoothnessClosed)

end FunctionalDataAnalysisCanonicalLaneLean
end HautevilleHouse