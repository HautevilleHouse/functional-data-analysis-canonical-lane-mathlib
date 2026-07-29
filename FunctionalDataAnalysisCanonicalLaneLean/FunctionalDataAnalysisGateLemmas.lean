import FunctionalDataAnalysisCanonicalLaneLean.FunctionalDataAnalysisBridgeLemmas

namespace HautevilleHouse
namespace FunctionalDataAnalysisCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end FunctionalDataAnalysisCanonicalLaneLean
end HautevilleHouse