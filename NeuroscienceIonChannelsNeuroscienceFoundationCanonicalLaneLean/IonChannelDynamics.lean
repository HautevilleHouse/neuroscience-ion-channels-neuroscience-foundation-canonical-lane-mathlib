import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean

structure IonChannelDynamicsPackage where
  voltageGatedSodium : Prop
  voltageGatedPotassium : Prop
  calciumChannel : Prop
  chlorideChannel : Prop
  ligandGatedReceptors : Prop
  gatingKinetics : Prop
  ionSelectivity : Prop
  conductanceModulation : Prop

structure IonChannelDynamicsEvidence (I : IonChannelDynamicsPackage) where
  voltageGatedSodiumClosed : I.voltageGatedSodium
  voltageGatedPotassiumClosed : I.voltageGatedPotassium
  calciumChannelClosed : I.calciumChannel
  chlorideChannelClosed : I.chlorideChannel
  ligandGatedReceptorsClosed : I.ligandGatedReceptors
  gatingKineticsClosed : I.gatingKinetics
  ionSelectivityClosed : I.ionSelectivity
  conductanceModulationClosed : I.conductanceModulation

def IonChannelDynamicsClosed (I : IonChannelDynamicsPackage) : Prop :=
  I.voltageGatedSodium ∧ I.voltageGatedPotassium ∧ I.calciumChannel ∧
  I.chlorideChannel ∧ I.ligandGatedReceptors ∧ I.gatingKinetics ∧
  I.ionSelectivity ∧ I.conductanceModulation

theorem ion_channel_dynamics_closed_from_evidence (I : IonChannelDynamicsPackage)
    (E : IonChannelDynamicsEvidence I) : IonChannelDynamicsClosed I := by
  exact And.intro E.voltageGatedSodiumClosed
    (And.intro E.voltageGatedPotassiumClosed
      (And.intro E.calciumChannelClosed
        (And.intro E.chlorideChannelClosed
          (And.intro E.ligandGatedReceptorsClosed
            (And.intro E.gatingKineticsClosed
              (And.intro E.ionSelectivityClosed
                E.conductanceModulationClosed))))))

end NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse