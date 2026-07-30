import HautevilleHouse.NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean.IonChannelAdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean

structure HebbianPlasticityRule where
  presynapticActivity : ℝ → ℝ
  postsynapticActivity : ℝ → ℝ
  synapticWeight : ℝ → ℝ
  learningRate : ℝ
  weightDynamics : Prop
  spikeTimingDependence : Prop

structure HebbianLearningEvidence (H : HebbianPlasticityRule) where
  weightDynamicsClosed : H.weightDynamics
  spikeTimingDependenceClosed : H.spikeTimingDependence

def HebbianPlasticityClosed (H : HebbianPlasticityRule) : Prop :=
  H.weightDynamics ∧ H.spikeTimingDependence

theorem hebbian_plasticity_closed_from_evidence
    (H : HebbianPlasticityRule) (E : HebbianLearningEvidence H) :
    HebbianPlasticityClosed H := by
  exact And.intro E.weightDynamicsClosed E.spikeTimingDependenceClosed

end NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse