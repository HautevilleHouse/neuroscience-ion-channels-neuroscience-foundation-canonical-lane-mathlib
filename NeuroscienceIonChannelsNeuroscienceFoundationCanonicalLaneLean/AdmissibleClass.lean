import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean

structure AdmittedNeuron where
  membrane : Prop
  ionChannels : Prop
  synapse : Prop
  signature : membrane ∧ ionChannels ∧ synapse

structure AdmissibleClass where
  object : AdmittedNeuron
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.signature ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse