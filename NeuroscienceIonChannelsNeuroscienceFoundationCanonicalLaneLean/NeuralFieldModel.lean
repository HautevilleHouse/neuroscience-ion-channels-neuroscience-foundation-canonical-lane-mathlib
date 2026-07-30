import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean

structure NeuralFieldModelPackage where
  spatialDomain : Type u
  connectivityKernel : spatialDomain → spatialDomain → ℝ
  firingRateFunction : ℝ → ℝ
  fieldEquation : Prop
  kernelSquareIntegrable : Prop
  firingRateLipschitz : Prop

def NeuralFieldClosed (N : NeuralFieldModelPackage) : Prop :=
  N.kernelSquareIntegrable ∧ N.firingRateLipschitz ∧ N.fieldEquation

theorem neural_field_closed_from_evidence (N : NeuralFieldModelPackage)
    (h1 : N.kernelSquareIntegrable) (h2 : N.firingRateLipschitz) (h3 : N.fieldEquation) :
    NeuralFieldClosed N := by
  exact And.intro h1 (And.intro h2 h3)

end HautevilleHouse.NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse
