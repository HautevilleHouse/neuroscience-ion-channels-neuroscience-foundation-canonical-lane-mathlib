import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean

structure SynapticPlasticityPackage where
  hebbianLearningRule : Prop
  spikeTimingDependence : Prop
  longTermPotentiation : Prop
  longTermDepression : Prop
  synapticWeightDynamics : Prop
  calciumConcentrationDependence : Prop

structure SynapticPlasticityEvidence (S : SynapticPlasticityPackage) where
  hebbianLearningRuleClosed : S.hebbianLearningRule
  spikeTimingDependenceClosed : S.spikeTimingDependence
  longTermPotentiationClosed : S.longTermPotentiation
  longTermDepressionClosed : S.longTermDepression
  synapticWeightDynamicsClosed : S.synapticWeightDynamics
  calciumConcentrationDependenceClosed : S.calciumConcentrationDependence

def SynapticPlasticityClosed (S : SynapticPlasticityPackage) : Prop :=
  S.hebbianLearningRule ∧ S.spikeTimingDependence ∧ S.longTermPotentiation ∧
  S.longTermDepression ∧ S.synapticWeightDynamics ∧ S.calciumConcentrationDependence

theorem synaptic_plasticity_closed_from_evidence (S : SynapticPlasticityPackage)
    (E : SynapticPlasticityEvidence S) : SynapticPlasticityClosed S := by
  exact And.intro E.hebbianLearningRuleClosed
    (And.intro E.spikeTimingDependenceClosed
      (And.intro E.longTermPotentiationClosed
        (And.intro E.longTermDepressionClosed
          (And.intro E.synapticWeightDynamicsClosed
            E.calciumConcentrationDependenceClosed))))

end NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse