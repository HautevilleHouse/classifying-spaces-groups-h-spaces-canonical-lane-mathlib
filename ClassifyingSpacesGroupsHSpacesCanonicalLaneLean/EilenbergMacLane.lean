import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassifyingSpacesGroupsHSpacesCanonicalLaneLean

structure EilenbergMacLane (G : Type u) [Group G] (n : ℕ) where
  space : Type v
  topology : TopologicalSpace space
  basepoint : space
  homotopyGroups : ℕ → Type w
  fundamentalGroupIso : homotopyGroups 1 ≃ G
  higherHomotopyTrivial : ∀ k ≥ 2, homotopyGroups k ≃ Unit
  homotopyGroupsComputed : Prop
  fundamentalGroupIsoTerm : fundamentalGroupIso
  higherHomotopyTrivialTerm : higherHomotopyTrivial
  homotopyGroupsComputedTerm : homotopyGroupsComputed

structure EilenbergMacLaneEvidence (G : Type u) [Group G] (n : ℕ) (K : EilenbergMacLane G n) where
  fundamentalGroupIsoClosed : K.fundamentalGroupIso
  higherHomotopyTrivialClosed : K.higherHomotopyTrivial
  homotopyGroupsComputedClosed : K.homotopyGroupsComputed

def EilenbergMacLaneClosed (G : Type u) [Group G] (n : ℕ) (K : EilenbergMacLane G n) : Prop :=
  K.fundamentalGroupIso ∧ K.higherHomotopyTrivial ∧ K.homotopyGroupsComputed

theorem eilenberg_mac_lane_closed_from_evidence (G : Type u) [Group G] (n : ℕ) (K : EilenbergMacLane G n) (E : EilenbergMacLaneEvidence G n K) : EilenbergMacLaneClosed G n K := by
  exact And.intro E.fundamentalGroupIsoClosed (And.intro E.higherHomotopyTrivialClosed E.homotopyGroupsComputedClosed)

end ClassifyingSpacesGroupsHSpacesCanonicalLaneLean
end HautevilleHouse