import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.FunctionalDataAnalysisCanonicalLaneLean.RegressionEstimator

namespace HautevilleHouse
namespace FunctionalDataAnalysisCanonicalLaneLean

structure FunctionalClusteringPackage where
  dissimilarityMeasure : FdaSpace → FdaSpace → ℝ
  clusteringAlgorithm : Prop
  clusterValidityFunctional : Prop
  consistencyClusterNumber : Prop

structure FunctionalClusteringEvidence (C : FunctionalClusteringPackage) where
  clusteringAlgorithmClosed : C.clusteringAlgorithm
  clusterValidityFunctionalClosed : C.clusterValidityFunctional
  consistencyClusterNumberClosed : C.consistencyClusterNumber

def FunctionalClusteringClosed (C : FunctionalClusteringPackage) : Prop :=
  C.clusteringAlgorithm ∧ C.clusterValidityFunctional ∧ C.consistencyClusterNumber

theorem functional_clustering_closed_from_evidence (C : FunctionalClusteringPackage) (E : FunctionalClusteringEvidence C) : FunctionalClusteringClosed C := by
  exact And.intro E.clusteringAlgorithmClosed (And.intro E.clusterValidityFunctionalClosed E.consistencyClusterNumberClosed)

end FunctionalDataAnalysisCanonicalLaneLean
end HautevilleHouse
