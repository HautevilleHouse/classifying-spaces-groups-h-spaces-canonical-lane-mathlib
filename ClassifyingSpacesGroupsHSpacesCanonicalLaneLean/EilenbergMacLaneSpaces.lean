import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassifyingSpacesGroupsHSpacesCanonicalLaneLean

structure EilenbergMacLaneSpace where
  group : Type u
  groupMul : Mul group
  groupInv : Inv group
  groupUnit : One group
  groupMulAssoc : ∀ (a b c : group), a * b * c = a * (b * c)
  groupUnitLeft : ∀ (a : group), 1 * a = a
  groupUnitRight : ∀ (a : group), a * 1 = a
  groupInvLeft : ∀ (a : group), a⁻¹ * a = 1
  groupInvRight : ∀ (a : group), a * a⁻¹ = 1
  n : ℕ
  space : Type v
  topology : TopologicalSpace space
  homotopyGroups : ∀ k : ℕ, k < n → Type w
  homotopyGroupIsomorphicToGroup : Prop
  universalCover : Prop
  classifyingSpace : Type v
  classifyingTopology : TopologicalSpace classifyingSpace
  universalBundle : Prop

structure EilenbergMacLaneEvidence (K : EilenbergMacLaneSpace) where
  groupAxiomsClosed : K.groupMulAssoc ∧ K.groupUnitLeft ∧ K.groupUnitRight ∧ K.groupInvLeft ∧ K.groupInvRight
  homotopyGroupsCorrect : ∀ k : ℕ, k < K.n → Nonempty (K.homotopyGroups k ≃ K.group)
  universalCoverClosed : K.universalCover
  classifyingSpaceClosed : K.classifyingSpace
  universalBundleClosed : K.universalBundle

def EilenbergMacLaneClosed (K : EilenbergMacLaneSpace) : Prop :=
  (K.groupMulAssoc ∧ K.groupUnitLeft ∧ K.groupUnitRight ∧ K.groupInvLeft ∧ K.groupInvRight) ∧
  (∀ k : ℕ, k < K.n → Nonempty (K.homotopyGroups k ≃ K.group)) ∧
  K.universalCover ∧ K.classifyingSpace ∧ K.universalBundle

theorem eilenberg_mac_lane_closed_from_evidence (K : EilenbergMacLaneSpace) (E : EilenbergMacLaneEvidence K) : EilenbergMacLaneClosed K := by
  refine And.intro E.groupAxiomsClosed ?_
  refine And.intro E.homotopyGroupsCorrect ?_
  refine And.intro E.universalCoverClosed ?_
  refine And.intro E.classifyingSpaceClosed E.universalBundleClosed

end ClassifyingSpacesGroupsHSpacesCanonicalLaneLean
end HautevilleHouse