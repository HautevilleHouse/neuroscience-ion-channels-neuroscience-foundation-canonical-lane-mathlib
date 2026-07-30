import canonicalLaneMathlib.AdmissibleClass

/-!
# Neural Field Theory Package

This module encodes neural field equations as an admissible-class bridge.
-/

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean

structure NeuralFieldPackage where
  connectivityKernel : ℝ → ℝ → ℝ
  activationFunction : ℝ → ℝ
  externalInput : ℝ → ℝ
  timeConstant : ℝ
  propagationSpeed : ℝ

structure NeuralFieldEvidence (N : NeuralFieldPackage) where
  kernelClosed : ∀ x y, N.connectivityKernel x y ≠ 0
  activationClosed : ∀ u, N.activationFunction u ≠ 0
  inputClosed : ∀ t, N.externalInput t ≠ 0
  timeConstantClosed : N.timeConstant > 0
  speedClosed : N.propagationSpeed > 0

def NeuralFieldClosed (N : NeuralFieldPackage) : Prop :=
  (∀ x y, N.connectivityKernel x y ≠ 0) ∧
  (∀ u, N.activationFunction u ≠ 0) ∧
  (∀ t, N.externalInput t ≠ 0) ∧
  N.timeConstant > 0 ∧
  N.propagationSpeed > 0

theorem neural_field_closed_from_evidence (N : NeuralFieldPackage)
    (E : NeuralFieldEvidence N) : NeuralFieldClosed N := by
  exact And.intro E.kernelClosed
    (And.intro E.activationClosed
      (And.intro E.inputClosed
        (And.intro E.timeConstantClosed E.speedClosed)))

end NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse
