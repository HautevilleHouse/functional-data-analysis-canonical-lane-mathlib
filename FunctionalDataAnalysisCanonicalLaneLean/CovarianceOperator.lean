import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDataAnalysisCanonicalLaneLean

structure CovarianceOperatorPackage where
  hilbertSpace : Type u
  covarianceKernel : Type v
  traceClass : Prop
  compactSelfAdjoint : Prop
  eigenDecomposition : Prop
  karhunenLoeveExpansion : Prop

structure CovarianceOperatorEvidence (C : CovarianceOperatorPackage) where
  traceClassClosed : C.traceClass
  compactSelfAdjointClosed : C.compactSelfAdjoint
  eigenDecompositionClosed : C.eigenDecomposition
  karhunenLoeveExpansionClosed : C.karhunenLoeveExpansion

def CovarianceOperatorClosed (C : CovarianceOperatorPackage) : Prop :=
  C.traceClass ∧ C.compactSelfAdjoint ∧ C.eigenDecomposition ∧ C.karhunenLoeveExpansion

theorem covariance_operator_closed_from_evidence (C : CovarianceOperatorPackage) (E : CovarianceOperatorEvidence C) :
    CovarianceOperatorClosed C := by
  exact And.intro E.traceClassClosed (And.intro E.compactSelfAdjointClosed (And.intro E.eigenDecompositionClosed E.karhunenLoeveExpansionClosed))

end FunctionalDataAnalysisCanonicalLaneLean
end HautevilleHouse
