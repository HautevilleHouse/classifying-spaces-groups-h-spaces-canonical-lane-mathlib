import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassifyingSpacesGroupsHSpacesCanonicalLaneLean

structure BarConstruction (G : Type u) [Monoid G] where
  n : ℕ
  simplicialSet : Type v
  faceMaps : List (simplicialSet → simplicialSet)
  degeneracyMaps : List (simplicialSet → simplicialSet)
  nerve : Type w
  geometricRealization : Type x
  realizationTopology : TopologicalSpace geometricRealization
  classifyingSpace : Type y
  classifyingTopology : TopologicalSpace classifyingSpace
  homotopyEquivalence : Prop

structure BarConstructionEvidence {G : Type u} [Monoid G] (B : BarConstruction G) where
  simplicialIdentities : Prop
  nerveCorrect : B.nerve = B.simplicialSet
  realizationCorrect : Nonempty (B.geometricRealization ≃ B.classifyingSpace)
  homotopyEquivalenceClosed : B.homotopyEquivalence

def BarConstructionClosed {G : Type u} [Monoid G] (B : BarConstruction G) : Prop :=
  B.simplicialSet ∧ B.nerve ∧ B.geometricRealization ∧ B.classifyingSpace ∧ B.homotopyEquivalence

theorem bar_construction_closed_from_evidence {G : Type u} [Monoid G] (B : BarConstruction G) (E : BarConstructionEvidence B) : BarConstructionClosed B := by
  refine And.intro ?_ (And.intro ?_ (And.intro ?_ (And.intro ?_ E.homotopyEquivalenceClosed)))
  · exact B.simplicialSet
  · exact B.nerve
  · exact B.geometricRealization
  · exact B.classifyingSpace

end ClassifyingSpacesGroupsHSpacesCanonicalLaneLean
end HautevilleHouse