import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDataAnalysisCanonicalLaneLean

structure FunctionalDecomposition where
  eigenfunctions : Type u
  eigenvalues : Type v
  varianceExplained : Prop
  karhunenLoeveRepresentation : Prop
  finiteTruncationError : Prop
  varianceExplainedTerm : varianceExplained
  karhunenLoeveRepresentationTerm : karhunenLoeveRepresentation
  finiteTruncationErrorTerm : finiteTruncationError

structure FunctionalPCAEvidence (D : FunctionalDecomposition) where
  varianceExplainedClosed : D.varianceExplained
  karhunenLoeveRepresentationClosed : D.karhunenLoeveRepresentation
  finiteTruncationErrorClosed : D.finiteTruncationError

def FunctionalPCAClosed (D : FunctionalDecomposition) : Prop :=
  D.varianceExplained ∧ D.karhunenLoeveRepresentation ∧ D.finiteTruncationError

theorem functional_pca_closed_from_evidence (D : FunctionalDecomposition) (E : FunctionalPCAEvidence D) : FunctionalPCAClosed D := by
  exact And.intro E.varianceExplainedClosed (And.intro E.karhunenLoeveRepresentationClosed E.finiteTruncationErrorClosed)

end FunctionalDataAnalysisCanonicalLaneLean
end HautevilleHouse