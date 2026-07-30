import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassifyingSpacesGroupsHSpacesCanonicalLaneLean

structure HEilenbergMacLane (G : Type u) [TopologicalSpace G] [Group G] (n : ℕ) where
  space : Type v
  homotopyGroup : ℕ → Type w
  onlyNonzeroInDimensionN : ∀ m, homotopyGroup m ≅ (if m = n then G else trivialGroup)
  classifyingMap : Space → space
  weakHomotopyEquivalence : Prop

def emSpace (G : Type u) [TopologicalSpace G] [Group G] (n : ℕ) : Type v :=
  (HEilenbergMacLane G n).space

end ClassifyingSpacesGroupsHSpacesCanonicalLaneLean
end HautevilleHouse