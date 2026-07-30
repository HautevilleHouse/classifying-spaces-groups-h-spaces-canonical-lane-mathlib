import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassifyingSpacesGroupsHSpacesCanonicalLaneLean

def ConstrainedClassifyingSpacesClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_classifying_spaces_endgame (A : AdmissibleClass) :
    ConstrainedClassifyingSpacesClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ClassifyingSpacesGroupsHSpacesCanonicalLaneLean
end HautevilleHouse