import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassifyingSpacesGroupsHSpacesCanonicalLaneLean

structure GroupCompletionPackage where
  G : Type u
  groupStructure : Group G
  topologicalGroup : TopologicalSpace G
  topologicalGroupCompatible : ContinuousMul G
  freeTopologicalMonoid : Type v
  completionMap : G → freeTopologicalMonoid
  completionIsGroup : Group freeTopologicalMonoid
  completionIsTopologicalGroup : TopologicalSpace freeTopologicalMonoid
  completionMapContinuous : Continuous completionMap
  completionMapHom : completionMap *> G →* freeTopologicalMonoid
  universalProperty : ∀ (H : Type w) [TopologicalSpace H] [Group H] [TopologicalGroup H] (f : G →* H) (hf : Continuous f), ∃! (F : freeTopologicalMonoid →* H), (Continuous F) ∧ (F ∘ completionMap = f)

structure GroupCompletionEvidence (P : GroupCompletionPackage) where
  completionMapContinuousClosed : P.completionMapContinuous
  universalPropertyClosed : P.universalProperty
  completionIsGroupClosed : P.completionIsGroup
  completionIsTopologicalGroupClosed : P.completionIsTopologicalGroup

def GroupCompletionClosed (P : GroupCompletionPackage) : Prop :=
  P.completionMapContinuous ∧ P.universalProperty ∧
  P.completionIsGroup ∧ P.completionIsTopologicalGroup

theorem group_completion_closed_from_evidence (P : GroupCompletionPackage) (E : GroupCompletionEvidence P) :
    GroupCompletionClosed P := by
  exact And.intro E.completionMapContinuousClosed
    (And.intro E.universalPropertyClosed
      (And.intro E.completionIsGroupClosed E.completionIsTopologicalGroupClosed))

end ClassifyingSpacesGroupsHSpacesCanonicalLaneLean
end HautevilleHouse