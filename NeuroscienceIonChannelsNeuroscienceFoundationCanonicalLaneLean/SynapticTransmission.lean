import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean

structure SynapticTransmissionPackage where
  neurotransmitterRelease : Prop
  receptorBinding : Prop
  postsynapticResponse : Prop
  transmissionClosed : neurotransmitterRelease ∧ receptorBinding ∧ postsynapticResponse

structure SynapticTransmissionEvidence (P : SynapticTransmissionPackage) where
  neurotransmitterReleaseClosed : P.neurotransmitterRelease
  receptorBindingClosed : P.receptorBinding
  postsynapticResponseClosed : P.postsynapticResponse

def SynapticTransmissionClosed (P : SynapticTransmissionPackage) : Prop := P.transmissionClosed

theorem synaptic_transmission_closed_from_evidence (P : SynapticTransmissionPackage) (E : SynapticTransmissionEvidence P) : SynapticTransmissionClosed P := by
  unfold SynapticTransmissionClosed
  exact And.intro E.neurotransmitterReleaseClosed
    (And.intro E.receptorBindingClosed E.postsynapticResponseClosed)

end NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse