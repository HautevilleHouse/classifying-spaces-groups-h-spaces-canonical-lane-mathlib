import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassifyingSpacesGroupsHSpacesCanonicalLaneLean.ClassifyingSpaceModel

namespace HautevilleHouse
namespace ClassifyingSpacesGroupsHSpacesCanonicalLaneLean

structure GroupCohomologyEquivalence (G : Type u) [TopologicalSpace G] [Group G] where
  classifyingSpace : ClassifyingSpaceModel G
  cohomologyRing : Type v
  isomorphismMap : Prop
  naturality : Prop
  dimensionShift : ℕ → ℕ

structure GroupCohomologyEquivalenceEvidence {G : Type u} [TopologicalSpace G] [Group G] (E : GroupCohomologyEquivalence G) where
  isomorphismMapClosed : E.isomorphismMap
  naturalityClosed : E.naturality

def GroupCohomologyEquivalenceClosed {G : Type u} [TopologicalSpace G] [Group G] (E : GroupCohomologyEquivalence G) : Prop :=
  E.isomorphismMap ∧ E.naturality

theorem group_cohomology_equivalence_closed_from_evidence {G : Type u} [TopologicalSpace G] [Group G] (E : GroupCohomologyEquivalence G) (Ev : GroupCohomologyEquivalenceEvidence E) : GroupCohomologyEquivalenceClosed E := by
  exact And.intro Ev.isomorphismMapClosed Ev.naturalityClosed

end ClassifyingSpacesGroupsHSpacesCanonicalLaneLean
end HautevilleHouse
