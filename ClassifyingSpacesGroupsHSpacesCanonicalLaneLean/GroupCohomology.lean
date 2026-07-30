import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassifyingSpacesGroupsHSpacesCanonicalLaneLean

structure GroupCohomologyPackage (G : Type u) [TopologicalSpace G] [Group G] where
  n : ℕ
  coefficientModule : Type v
  cohomologyGroup : Type w
  resolution : Type x
  coboundaryMap : resolution → resolution
  cocycleCondition : Prop
  cohomologyComputed : Prop
  resolutionTerm : resolution
  coboundaryMapTerm : coboundaryMap
  cocycleConditionTerm : cocycleCondition
  cohomologyComputedTerm : cohomologyComputed

structure GroupCohomologyEvidence (G : Type u) [TopologicalSpace G] [Group G] (H : GroupCohomologyPackage G) where
  cocycleConditionClosed : H.cocycleCondition
  cohomologyComputedClosed : H.cohomologyComputed

def GroupCohomologyClosed (G : Type u) [TopologicalSpace G] [Group G] (H : GroupCohomologyPackage G) : Prop :=
  H.cocycleCondition ∧ H.cohomologyComputed

theorem group_cohomology_closed_from_evidence (G : Type u) [TopologicalSpace G] [Group G] (H : GroupCohomologyPackage G) (E : GroupCohomologyEvidence G H) : GroupCohomologyClosed G H := by
  exact And.intro E.cocycleConditionClosed E.cohomologyComputedClosed

end ClassifyingSpacesGroupsHSpacesCanonicalLaneLean
end HautevilleHouse