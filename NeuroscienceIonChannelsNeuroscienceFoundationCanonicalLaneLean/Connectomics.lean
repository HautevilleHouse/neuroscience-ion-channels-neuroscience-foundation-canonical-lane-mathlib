import HautevilleHouse.NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean.IonChannelAdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean

structure ConnectomeModel where
  neuronPopulation : Type
  synapseMatrix : Type
  connectionDensity : Prop
  smallWorldProperty : Prop
  modularStructure : Prop
  dynamicsOnNetwork : Prop

structure ConnectomeEvidence (C : ConnectomeModel) where
  connectionDensityClosed : C.connectionDensity
  smallWorldPropertyClosed : C.smallWorldProperty
  modularStructureClosed : C.modularStructure
  dynamicsOnNetworkClosed : C.dynamicsOnNetwork

def ConnectomeClosed (C : ConnectomeModel) : Prop :=
  C.connectionDensity ∧ C.smallWorldProperty ∧ C.modularStructure ∧ C.dynamicsOnNetwork

theorem connectome_closed_from_evidence
    (C : ConnectomeModel) (E : ConnectomeEvidence C) :
    ConnectomeClosed C := by
  exact And.intro E.connectionDensityClosed
    (And.intro E.smallWorldPropertyClosed
      (And.intro E.modularStructureClosed E.dynamicsOnNetworkClosed))

end NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse