import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean

structure IonChannelKineticsPackage where
  channelTypes : ℕ
  openingRate : Type u → ℝ
  closingRate : Type u → ℝ
  ratesPositive : Prop
  steadyStateExistence : Prop

def KineticsClosed (K : IonChannelKineticsPackage) : Prop :=
  K.ratesPositive ∧ K.steadyStateExistence

theorem kinetics_closed_from_evidence (K : IonChannelKineticsPackage)
    (h1 : K.ratesPositive) (h2 : K.steadyStateExistence) :
    KineticsClosed K := by
  exact And.intro h1 h2

end HautevilleHouse.NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse
