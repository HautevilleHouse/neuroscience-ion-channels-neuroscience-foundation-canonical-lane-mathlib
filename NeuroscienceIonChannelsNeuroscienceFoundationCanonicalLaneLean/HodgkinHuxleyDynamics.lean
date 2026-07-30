import canonicalLaneMathlib.AdmissibleClass

/-!
# Hodgkin-Huxley Dynamics Package

This module encodes the Hodgkin-Huxley equations as an admissible-class bridge.
-/

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean

structure HodgkinHuxleyPackage where
  membraneCapacitance : ℝ
  ionConductances : ℝ → ℝ → ℝ
  reversalPotentials : ℝ → ℝ
  gatingDynamics : ℝ → ℝ → ℝ
  actionPotentialThreshold : ℝ

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyPackage) where
  capacitanceClosed : H.membraneCapacitance > 0
  conductanceClosed : ∀ t x, H.ionConductances t x ≥ 0
  reversalClosed : ∀ t, H.reversalPotentials t ≠ 0
  gatingClosed : ∀ t x, H.gatingDynamics t x ≠ 0
  thresholdClosed : H.actionPotentialThreshold ≠ 0

def HodgkinHuxleyClosed (H : HodgkinHuxleyPackage) : Prop :=
  H.membraneCapacitance > 0 ∧
  (∀ t x, H.ionConductances t x ≥ 0) ∧
  (∀ t, H.reversalPotentials t ≠ 0) ∧
  (∀ t x, H.gatingDynamics t x ≠ 0) ∧
  H.actionPotentialThreshold ≠ 0

theorem hodgkin_huxley_closed_from_evidence (H : HodgkinHuxleyPackage)
    (E : HodgkinHuxleyEvidence H) : HodgkinHuxleyClosed H := by
  exact And.intro E.capacitanceClosed
    (And.intro E.conductanceClosed
      (And.intro E.reversalClosed
        (And.intro E.gatingClosed E.thresholdClosed)))

end NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse
