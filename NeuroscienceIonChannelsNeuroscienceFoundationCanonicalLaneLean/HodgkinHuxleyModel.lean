import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean

structure HodgkinHuxleyModelPackage where
  membraneCapacitance : Prop
  sodiumChannelKinetics : Prop
  potassiumChannelKinetics : Prop
  leakCurrent : Prop
  stimulusCurrent : Prop
  voltageTimeEvolution : Prop
  conductanceEquations : Prop

structure HodgkinHuxleyModelEvidence (H : HodgkinHuxleyModelPackage) where
  membraneCapacitanceClosed : H.membraneCapacitance
  sodiumChannelKineticsClosed : H.sodiumChannelKinetics
  potassiumChannelKineticsClosed : H.potassiumChannelKinetics
  leakCurrentClosed : H.leakCurrent
  stimulusCurrentClosed : H.stimulusCurrent
  voltageTimeEvolutionClosed : H.voltageTimeEvolution
  conductanceEquationsClosed : H.conductanceEquations

def HodgkinHuxleyModelClosed (H : HodgkinHuxleyModelPackage) : Prop :=
  H.membraneCapacitance ∧ H.sodiumChannelKinetics ∧ H.potassiumChannelKinetics ∧
  H.leakCurrent ∧ H.stimulusCurrent ∧ H.voltageTimeEvolution ∧ H.conductanceEquations

theorem hodgkin_huxley_model_closed_from_evidence (H : HodgkinHuxleyModelPackage)
    (E : HodgkinHuxleyModelEvidence H) : HodgkinHuxleyModelClosed H := by
  exact And.intro E.membraneCapacitanceClosed
    (And.intro E.sodiumChannelKineticsClosed
      (And.intro E.potassiumChannelKineticsClosed
        (And.intro E.leakCurrentClosed
          (And.intro E.stimulusCurrentClosed
            (And.intro E.voltageTimeEvolutionClosed
              E.conductanceEquationsClosed)))))

end NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse