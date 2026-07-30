import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean

structure ConnectomicsCircuitPackage where
  neuronCount : ℕ
  adjacencyMatrix : Matrix (Fin neuronCount) (Fin neuronCount) ℝ
  connectionWeightsBounded : Prop
  graphConnected : Prop
  signalPropagation : Prop

def CircuitClosed (C : ConnectomicsCircuitPackage) : Prop :=
  C.connectionWeightsBounded ∧ C.graphConnected ∧ C.signalPropagation

theorem circuit_closed_from_evidence (C : ConnectomicsCircuitPackage)
    (h1 : C.connectionWeightsBounded) (h2 : C.graphConnected) (h3 : C.signalPropagation) :
    CircuitClosed C := by
  exact And.intro h1 (And.intro h2 h3)

end HautevilleHouse.NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse
