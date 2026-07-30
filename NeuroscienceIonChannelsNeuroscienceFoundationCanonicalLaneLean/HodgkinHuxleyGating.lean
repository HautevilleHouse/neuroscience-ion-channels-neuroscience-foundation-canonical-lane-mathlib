import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean

structure HodgkinHuxleyGatingPackage where
  membranePotential : ℝ → ℝ
  sodiumActivation : ℝ → ℝ
  sodiumInactivation : ℝ → ℝ
  potassiumActivation : ℝ → ℝ
  gatingRatesContinuous : Prop
  gatingRatesBounded : Prop
  initialConditionsConsistent : Prop

def GatingClosed (H : HodgkinHuxleyGatingPackage) : Prop :=
  H.gatingRatesContinuous ∧ H.gatingRatesBounded ∧ H.initialConditionsConsistent

theorem gating_closed_from_evidence (H : HodgkinHuxleyGatingPackage)
    (h1 : H.gatingRatesContinuous) (h2 : H.gatingRatesBounded) (h3 : H.initialConditionsConsistent) :
    GatingClosed H := by
  exact And.intro h1 (And.intro h2 h3)

end HautevilleHouse.NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse
