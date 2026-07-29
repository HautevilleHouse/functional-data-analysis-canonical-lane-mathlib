import canonicalLaneMathlib.AdmissibleClass
import FunctionalDataAnalysisCanonicalLaneLean.FunctionalDataBridgeLemmas

namespace HautevilleHouse
namespace FunctionalDataAnalysisCanonicalLaneLean

def gateClosed (A : AdmissibleFunctionalClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleFunctionalClass) :
    gateClosed A := by
  exact A.gateWitness

end FunctionalDataAnalysisCanonicalLaneLean
end HautevilleHouse
