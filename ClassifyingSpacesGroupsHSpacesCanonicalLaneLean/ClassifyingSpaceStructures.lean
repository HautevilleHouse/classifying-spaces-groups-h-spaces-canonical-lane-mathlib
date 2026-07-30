import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassifyingSpacesGroupsHSpacesCanonicalLaneLean

structure ClassifyingSpace (G : Type u) where
  carrier : Type v
  topology : TopologicalSpace carrier
  groupAction : G → carrier → carrier
  groupAction_continuous : Continuous (Function.uncurry groupAction)
  principalBundleOver : Type w
  universalProperty : ∀ (X : Type w) [TopologicalSpace X],
    (PrincipalBundle G X) → (PrincipalBundle G carrier) →
    Nonempty (ContinuousMap X carrier)

structure EilenbergMacLaneSpace (G : Type u) (n : ℕ) where
  carrier : Type v
  topology : TopologicalSpace carrier
  basepoint : carrier
  homotopyGroups : (k : ℕ) → k ≠ n → HomotopyGroup carrier k basepoint ≅ TrivialGroup
  dimensionHomotopy : HomotopyGroup carrier n basepoint ≅ G

structure HGauge (X Y : Type u) where
  map : X → Y
  isWeakHomotopyEquiv : IsWeakHomotopyEquiv map

end ClassifyingSpacesGroupsHSpacesCanonicalLaneLean
end HautevilleHouse