import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDataAnalysisCanonicalLaneLean

structure FdaSpace where
  carrier : Type u
  topology : TopologicalSpace carrier
  integral : (carrier → ℝ) → ℝ
  orthonormalBasis : Type v

def FdaCompleteSpace (X : FdaSpace) : Prop := True

structure FdaAdmittedObject where
  space : FdaSpace
  functionalData : Type w
  functionalDataComplete : FdaCompleteSpace space
  smoothDecomposition : Prop
  conclusion : smoothDecomposition

end FunctionalDataAnalysisCanonicalLaneLean
end HautevilleHouse
