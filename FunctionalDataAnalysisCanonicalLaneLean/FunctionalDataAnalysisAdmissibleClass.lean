import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDataAnalysisCanonicalLaneLean

structure FDASpace where
  carrier : Type
  topology : TopologicalSpace carrier
  normedSpace : NormedSpace ℝ carrier

structure FDAAdmittedObject where
  space : FDASpace
  separableHilbert : Prop
  covarianceOperatorExists : Prop
  conclusion : covarianceOperatorExists

structure FDAEndgameState where
  object : FDAAdmittedObject

def FDAWitnessClosed (O : FDAAdmittedObject) : Prop :=
  O.covarianceOperatorExists

end FunctionalDataAnalysisCanonicalLaneLean
end HautevilleHouse