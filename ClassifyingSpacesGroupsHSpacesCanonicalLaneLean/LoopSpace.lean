import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassifyingSpacesGroupsHSpacesCanonicalLaneLean

structure LoopSpace (X : Type u) [TopologicalSpace X] (x₀ : X) where
  point : X
  loops : Type v
  loopTopology : TopologicalSpace loops
  concatenation : loops → loops → loops
  constantLoop : loops
  inverseLoop : loops → loops
  basepointPreserved : Prop
  concatenationContinuous : Prop
  groupStructure : Prop
  basepointPreservedTerm : basepointPreserved
  concatenationContinuousTerm : concatenationContinuous
  groupStructureTerm : groupStructure

structure LoopSpaceEvidence (X : Type u) [TopologicalSpace X] (x₀ : X) (L : LoopSpace X x₀) where
  basepointPreservedClosed : L.basepointPreserved
  concatenationContinuousClosed : L.concatenationContinuous
  groupStructureClosed : L.groupStructure

def LoopSpaceClosed (X : Type u) [TopologicalSpace X] (x₀ : X) (L : LoopSpace X x₀) : Prop :=
  L.basepointPreserved ∧ L.concatenationContinuous ∧ L.groupStructure

theorem loop_space_closed_from_evidence (X : Type u) [TopologicalSpace X] (x₀ : X) (L : LoopSpace X x₀) (E : LoopSpaceEvidence X x₀ L) : LoopSpaceClosed X x₀ L := by
  exact And.intro E.basepointPreservedClosed (And.intro E.concatenationContinuousClosed E.groupStructureClosed)

end ClassifyingSpacesGroupsHSpacesCanonicalLaneLean
end HautevilleHouse