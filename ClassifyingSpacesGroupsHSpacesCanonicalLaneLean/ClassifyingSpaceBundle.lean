import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassifyingSpacesGroupsHSpacesCanonicalLaneLean

structure ClassifyingSpaceBundle (G : Type) [Group G] (C : CSpace G) where
  baseSpace : Type
  baseTopology : TopologicalSpace baseSpace
  totalSpace : Type
  totalTopology : TopologicalSpace totalSpace
  projection : totalSpace → baseSpace
  fiber : baseSpace → Type
  localTrivialization : (x : baseSpace) → Homeomorph (fiber x) C.space
  structureGroup : Prop
  classifyingMapExists : Prop

structure ClassifyingSpaceBundleEvidence {G : Type} [Group G] {C : CSpace G}
    (B : ClassifyingSpaceBundle G C) where
  structureGroupClosed : B.structureGroup
  classifyingMapExistsClosed : B.classifyingMapExists

def ClassifyingSpaceBundleClosed {G : Type} [Group G] {C : CSpace G}
    (B : ClassifyingSpaceBundle G C) : Prop :=
  B.structureGroup ∧ B.classifyingMapExists

theorem classifyingSpaceBundle_closed_from_evidence
    {G : Type} [Group G] {C : CSpace G}
    (B : ClassifyingSpaceBundle G C) (E : ClassifyingSpaceBundleEvidence B) :
    ClassifyingSpaceBundleClosed B := by
  exact And.intro E.structureGroupClosed E.classifyingMapExistsClosed

end ClassifyingSpacesGroupsHSpacesCanonicalLaneLean
end HautevilleHouse