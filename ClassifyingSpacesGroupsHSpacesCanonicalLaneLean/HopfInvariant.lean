import ClassifyingSpacesGroupsHSpacesCanonicalLaneLean.EilenbergMacLane

/-!
# Hopf Invariant Package
-/

namespace HautevilleHouse
namespace ClassifyingSpacesGroupsHSpacesCanonicalLaneLean

structure HopfInvariantPackage {G : Type u} [Group G] (n : ℕ) (K : EilenbergMacLanePackage G n) where
  invariantMap : K.classifyingSpace → S^3
  hopfInvariant : ℤ
  homotopyClass : Prop
  invariantWellDefined : Prop

structure HopfInvariantEvidence {G : Type u} [Group G] (n : ℕ) {K : EilenbergMacLanePackage G n} (H : HopfInvariantPackage G n K) where
  homotopyClassClosed : H.homotopyClass
  invariantWellDefinedClosed : H.invariantWellDefined

def HopfInvariantClosed {G : Type u} [Group G] (n : ℕ) {K : EilenbergMacLanePackage G n} (H : HopfInvariantPackage G n K) : Prop :=
  H.homotopyClass ∧ H.invariantWellDefined

theorem hopf_invariant_closed_from_evidence
    {G : Type u} [Group G] (n : ℕ) {K : EilenbergMacLanePackage G n} (H : HopfInvariantPackage G n K) (E : HopfInvariantEvidence G n H) : HopfInvariantClosed G n H := by
  exact And.intro E.homotopyClassClosed E.invariantWellDefinedClosed

end ClassifyingSpacesGroupsHSpacesCanonicalLaneLean
end HautevilleHouse