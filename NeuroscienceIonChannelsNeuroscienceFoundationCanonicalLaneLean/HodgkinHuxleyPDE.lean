import HautevilleHouse.NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean.IonChannelAdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean

structure HodgkinHuxleyEquations where
  membraneVoltage : ℝ → ℝ
  sodiumCurrent : ℝ → ℝ
  potassiumCurrent : ℝ → ℝ
  leakCurrent : ℝ → ℝ
  gatingVariables : ℝ → ℝ × ℝ × ℝ  -- n, m, h
  parameters : ℝ × ℝ × ℝ × ℝ × ℝ × ℝ × ℝ  -- gNa, gK, gL, ENa, EK, EL, Cm
  differentialEquations : Prop
  initialConditions : Prop
  solutionExists : Prop

structure HodgkinHuxleyEvidence (H : HodgkinHuxleyEquations) where
  differentialEquationsClosed : H.differentialEquations
  initialConditionsClosed : H.initialConditions
  solutionExistsClosed : H.solutionExists

def hhWitnessClosed (O : AdmittedIonChannel) : Prop :=
  O.conductanceMeasured

end NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse