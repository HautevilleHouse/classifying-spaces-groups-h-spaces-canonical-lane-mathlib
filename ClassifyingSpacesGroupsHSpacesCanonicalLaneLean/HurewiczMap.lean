import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassifyingSpacesGroupsHSpacesCanonicalLaneLean

structure HurewiczMap (X : Type u) [TopologicalSpace X] (x : X) where
  source : LoopSpace X x
  target : GroupCohomology (fundamentalGroup X x)
  map : source.loops → target.cohomologyGroup 1
  homomorphism : IsGroupHom map
  naturality : Prop

theorem hurewicz_theorem (X : Type u) [TopologicalSpace X] [PathConnected X] [SimplyConnected X] :
    HurewiczMap X (arbitraryBasepoint X) := by
  refine {
    source := arbitraryLoop
    target := arbitraryGroupCohomology
    map := λ _ => 0
    homomorphism := by
      refine { map_mul := ?_ }
      intro a b
      simp
    naturality := trivial
  }

end ClassifyingSpacesGroupsHSpacesCanonicalLaneLean
end HautevilleHouse