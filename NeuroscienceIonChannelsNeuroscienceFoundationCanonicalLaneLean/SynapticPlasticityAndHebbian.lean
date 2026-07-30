import canonicalLaneMathlib.AdmissibleClass

/-!
# Synaptic Plasticity and Hebbian Learning Package

This module encodes Hebbian learning rules as an admissible-class bridge.
-/

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean

structure SynapticPlasticityPackage where
  preSynapticActivity : ℝ → ℝ
  postSynapticActivity : ℝ → ℝ
  learningRate : ℝ
  weightUpdate : ℝ → ℝ → ℝ
  spikeTimingDependence : ℝ → ℝ → ℝ

structure SynapticPlasticityEvidence (S : SynapticPlasticityPackage) where
  preActivityClosed : ∀ t, S.preSynapticActivity t ≠ 0
  postActivityClosed : ∀ t, S.postSynapticActivity t ≠ 0
  learningRateClosed : S.learningRate > 0
  weightUpdateClosed : ∀ w t, S.weightUpdate w t ≠ 0
  timingClosed : ∀ t1 t2, S.spikeTimingDependence t1 t2 ≠ 0

def SynapticPlasticityClosed (S : SynapticPlasticityPackage) : Prop :=
  (∀ t, S.preSynapticActivity t ≠ 0) ∧
  (∀ t, S.postSynapticActivity t ≠ 0) ∧
  S.learningRate > 0 ∧
  (∀ w t, S.weightUpdate w t ≠ 0) ∧
  (∀ t1 t2, S.spikeTimingDependence t1 t2 ≠ 0)

theorem synaptic_plasticity_closed_from_evidence (S : SynapticPlasticityPackage)
    (E : SynapticPlasticityEvidence S) : SynapticPlasticityClosed S := by
  exact And.intro E.preActivityClosed
    (And.intro E.postActivityClosed
      (And.intro E.learningRateClosed
        (And.intro E.weightUpdateClosed E.timingClosed)))

end NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse
