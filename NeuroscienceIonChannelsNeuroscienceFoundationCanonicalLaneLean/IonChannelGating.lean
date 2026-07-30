import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean

structure IonChannelGatingPackage where
  voltageSensing : Prop
  conformationChange : Prop
  selectivityFilter : Prop
  gatingClosed : voltageSensing ∧ conformationChange ∧ selectivityFilter

structure IonChannelGatingEvidence (P : IonChannelGatingPackage) where
  voltageSensingClosed : P.voltageSensing
  conformationChangeClosed : P.conformationChange
  selectivityFilterClosed : P.selectivityFilter

def IonChannelGatingClosed (P : IonChannelGatingPackage) : Prop := P.gatingClosed

theorem ion_channel_gating_closed_from_evidence (P : IonChannelGatingPackage) (E : IonChannelGatingEvidence P) : IonChannelGatingClosed P := by
  unfold IonChannelGatingClosed
  exact And.intro E.voltageSensingClosed
    (And.intro E.conformationChangeClosed E.selectivityFilterClosed)

end NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse