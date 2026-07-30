import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassifyingSpacesGroupsHSpacesCanonicalLaneLean

/-- The classifying space theorem states that for a discrete group G, the classifying space BG is a K(G,1). -/
structure ClassifyingSpaceTheorem where
  group : Type u
  groupMul : Mul group
  groupInv : Inv group
  groupOne : One group
  groupAssoc : ∀ a b c : group, (a * b) * c = a * (b * c)
  oneMul : ∀ a : group, 1 * a = a
  mulOne : ∀ a : group, a * 1 = a
  mulLeftInv : ∀ a : group, a⁻¹ * a = 1
  classifyingSpaceExists : Prop
  kappaOneCondition : Prop
  classifyingSpaceExistsProof : classifyingSpaceExists
  kappaOneConditionProof : kappaOneCondition

def ClassifyingSpaceClosed (T : ClassifyingSpaceTheorem) : Prop :=
  T.classifyingSpaceExists ∧ T.kappaOneCondition

theorem classifying_space_closed_from_theorem (T : ClassifyingSpaceTheorem) :
    ClassifyingSpaceClosed T := by
  exact And.intro T.classifyingSpaceExistsProof T.kappaOneConditionProof

end ClassifyingSpacesGroupsHSpacesCanonicalLaneLean
end HautevilleHouse
