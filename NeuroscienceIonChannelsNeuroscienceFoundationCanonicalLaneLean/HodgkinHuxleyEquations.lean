import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean

structure HodgkinHuxleyEquationsPackage where
  membranePotential : Prop
  sodiumActivation : Prop
  sodiumInactivation : Prop
  potassiumActivation : Prop
  leakCurrent : Prop
  equationClosed : membranePotential ∧ sodiumActivation ∧ sodiumInactivation ∧ potassiumActivation ∧ leakCurrent

structure HodgkinHuxleyEquationsEvidence (P : HodgkinHuxleyEquationsPackage) where
  membranePotentialClosed : P.membranePotential
  sodiumActivationClosed : P.sodiumActivation
  sodiumInactivationClosed : P.sodiumInactivation
  potassiumActivationClosed : P.potassiumActivation
  leakCurrentClosed : P.leakCurrent

def HodgkinHuxleyEquationsClosed (P : HodgkinHuxleyEquationsPackage) : Prop := P.equationClosed

theorem hodgkin_huxley_equations_closed_from_evidence (P : HodgkinHuxleyEquationsPackage) (E : HodgkinHuxleyEquationsEvidence P) : HodgkinHuxleyEquationsClosed P := by
  unfold HodgkinHuxleyEquationsClosed
  exact And.intro E.membranePotentialClosed
    (And.intro E.sodiumActivationClosed
      (And.intro E.sodiumInactivationClosed
        (And.intro E.potassiumActivationClosed E.leakCurrentClosed)))

end NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse