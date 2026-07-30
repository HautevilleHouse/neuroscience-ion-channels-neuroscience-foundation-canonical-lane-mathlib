import canonicalLaneMathlib.AdmissibleClass

/-!
# Connectomics Graph Package

This module encodes connectome graph structures as an admissible-class bridge.
-/

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean

structure ConnectomicsPackage where
  nodeCount : ℕ
  edgeMatrix : ℕ → ℕ → ℝ
  connectionDensity : ℝ
  pathLengthDistribution : ℝ → ℝ

structure ConnectomicsEvidence (C : ConnectomicsPackage) where
  nodeCountClosed : C.nodeCount > 0
  edgeMatrixClosed : ∀ i j, C.edgeMatrix i j ≥ 0
  densityClosed : C.connectionDensity > 0
  pathLengthClosed : ∀ l, C.pathLengthDistribution l ≠ 0

def ConnectomicsClosed (C : ConnectomicsPackage) : Prop :=
  C.nodeCount > 0 ∧
  (∀ i j, C.edgeMatrix i j ≥ 0) ∧
  C.connectionDensity > 0 ∧
  (∀ l, C.pathLengthDistribution l ≠ 0)

theorem connectomics_closed_from_evidence (C : ConnectomicsPackage)
    (E : ConnectomicsEvidence C) : ConnectomicsClosed C := by
  exact And.intro E.nodeCountClosed
    (And.intro E.edgeMatrixClosed
      (And.intro E.densityClosed E.pathLengthClosed))

end NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse
