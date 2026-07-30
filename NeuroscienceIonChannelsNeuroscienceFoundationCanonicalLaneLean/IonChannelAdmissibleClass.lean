import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean

structure IonChannelClass where
  channelProtein : Type
  selectivityFilter : Prop
  gatingMechanism : Prop
  conductance : Prop

structure AdmittedIonChannel where
  channel : IonChannelClass
  hhEquationsValid : Prop
  conductanceMeasured : Prop
  conclusion : conductanceMeasured

structure AdmissibleClass where
  object : AdmittedIonChannel
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  hhWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse