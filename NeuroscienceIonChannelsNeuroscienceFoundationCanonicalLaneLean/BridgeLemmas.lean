import HautevilleHouse.NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean.HodgkinHuxleyPDE

namespace HautevilleHouse
namespace NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  hhWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end NeuroscienceIonChannelsNeuroscienceFoundationCanonicalLaneLean
end HautevilleHouse