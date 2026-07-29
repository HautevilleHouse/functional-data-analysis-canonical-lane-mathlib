import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDataAnalysisCanonicalLaneLean

structure FunctionalDataAdmissibleObject where
  space : Type u
  measure : Type v
  kernel : Type w
  samplePath : Type x
  covarianceOperator : Type y
  basisSystem : Type z
  smoothnessAssumption : Prop
  compactnessAssumption : Prop
  basisCompleteness : Prop
  conclusion : Prop

structure AdmissibleFunctionalClass where
  object : FunctionalDataAdmissibleObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedFunctionalClosure (A : AdmissibleFunctionalClass) : Prop :=
  FunctionalDataWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FunctionalDataAnalysisCanonicalLaneLean
end HautevilleHouse
