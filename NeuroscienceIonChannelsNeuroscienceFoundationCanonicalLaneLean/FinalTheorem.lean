import HautevilleHouse.NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean

def ConstrainedIonChannelClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_ion_channel_endgame (A : AdmissibleClass) :
    ConstrainedIonChannelClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse