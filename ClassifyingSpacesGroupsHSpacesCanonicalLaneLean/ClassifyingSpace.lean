import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassifyingSpacesGroupsHSpacesCanonicalLaneLean

structure ClassifyingSpaceBundle (G : Type u) [TopologicalSpace G] [Group G] where
  totalSpace : Type v
  baseSpace : Type w
  projection : totalSpace → baseSpace
  fiberIsGroup : G ≃ᵗ (totalSpace ?)
  localTrivialization : Prop
  numerableCover : Prop

def classifyingSpace (G : Type u) [TopologicalSpace G] [Group G] : Type w :=
  let bundle : ClassifyingSpaceBundle G := sorry
  bundle.baseSpace

end ClassifyingSpacesGroupsHSpacesCanonicalLaneLean
end HautevilleHouse