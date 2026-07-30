import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassifyingSpacesGroupsHSpacesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ClassifyingSpaceWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ClassifyingSpacesGroupsHSpacesCanonicalLaneLean
end HautevilleHouse