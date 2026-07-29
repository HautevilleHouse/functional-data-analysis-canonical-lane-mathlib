import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDataAnalysisCanonicalLaneLean

structure FunctionalPrincipalComponentAnalysisPackage where
  covarianceOperator : CovarianceOperatorPackage
  fpcScores : Type u
  varianceExplained : Prop
  dimensionReduction : Prop
  reconstructionError : Prop
  asymptoticConsistency : Prop

structure FunctionalPrincipalComponentAnalysisEvidence (P : FunctionalPrincipalComponentAnalysisPackage) where
  varianceExplainedClosed : P.varianceExplained
  dimensionReductionClosed : P.dimensionReduction
  reconstructionErrorClosed : P.reconstructionError
  asymptoticConsistencyClosed : P.asymptoticConsistency

def FunctionalPrincipalComponentAnalysisClosed (P : FunctionalPrincipalComponentAnalysisPackage) : Prop :=
  P.varianceExplained ∧ P.dimensionReduction ∧ P.reconstructionError ∧ P.asymptoticConsistency

theorem functional_principal_component_analysis_closed_from_evidence (P : FunctionalPrincipalComponentAnalysisPackage) (E : FunctionalPrincipalComponentAnalysisEvidence P) :
    FunctionalPrincipalComponentAnalysisClosed P := by
  exact And.intro E.varianceExplainedClosed (And.intro E.dimensionReductionClosed (And.intro E.reconstructionErrorClosed E.asymptoticConsistencyClosed))

end FunctionalDataAnalysisCanonicalLaneLean
end HautevilleHouse
