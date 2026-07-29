import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDataAnalysisCanonicalLaneLean

structure BasisExpansionPackage where
  basisFamily : Type u
  domain : Type v
  approximationOrder : Nat
  expansionCoefficients : Type w
  orthonormalBasis : Prop
  uniformApproximation : Prop
  basisFunctions : Prop

structure BasisExpansionEvidence (P : BasisExpansionPackage) where
  orthonormalBasisClosed : P.orthonormalBasis
  uniformApproximationClosed : P.uniformApproximation
  basisFunctionsClosed : P.basisFunctions

def BasisExpansionClosed (P : BasisExpansionPackage) : Prop :=
  P.orthonormalBasis ∧ P.uniformApproximation ∧ P.basisFunctions

theorem basis_expansion_closed_from_evidence (P : BasisExpansionPackage) (E : BasisExpansionEvidence P) :
    BasisExpansionClosed P := by
  exact And.intro E.orthonormalBasisClosed (And.intro E.uniformApproximationClosed E.basisFunctionsClosed)

end FunctionalDataAnalysisCanonicalLaneLean
end HautevilleHouse
