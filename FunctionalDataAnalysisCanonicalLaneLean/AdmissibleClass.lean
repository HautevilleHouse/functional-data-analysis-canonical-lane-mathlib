import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace FunctionalDataAnalysisCanonicalLaneLean

structure FunctionalAdmittedObject where
  curveData : Type u
  registered : Prop
  smooth : Prop
  bounded : Prop
  conclusion : registered ∧ smooth ∧ bounded

structure AdmissibleClass where
  object : FunctionalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  (A.object.registered ∧ A.object.smooth ∧ A.object.bounded) ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end FunctionalDataAnalysisCanonicalLaneLean
end HautevilleHouse