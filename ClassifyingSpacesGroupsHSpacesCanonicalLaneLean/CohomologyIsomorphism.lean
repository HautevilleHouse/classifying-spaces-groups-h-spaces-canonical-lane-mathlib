import ClassifyingSpacesGroupsHSpacesCanonicalLaneLean.ClassifyingSpaceConstruction

namespace HautevilleHouse
namespace ClassifyingSpacesGroupsHSpacesCanonicalLaneLean

structure CohomologyIsomorphismPackage where
  sourceSpace : ClassifyingSpace
  targetSpace : ClassifyingSpace
  continuousMap : sourceSpace.carrier → targetSpace.carrier
  cohomologyIsomorphism : Prop
  homotopyEquivalence : Prop

structure CohomologyIsomorphismEvidence (C : CohomologyIsomorphismPackage) where
  cohomologyIsomorphismClosed : C.cohomologyIsomorphism
  homotopyEquivalenceClosed : C.homotopyEquivalence

def CohomologyIsomorphismClosed (C : CohomologyIsomorphismPackage) : Prop :=
  C.cohomologyIsomorphism ∧ C.homotopyEquivalence

theorem cohomology_isomorphism_closed_from_evidence (C : CohomologyIsomorphismPackage) (E : CohomologyIsomorphismEvidence C) :
    CohomologyIsomorphismClosed C := by
  exact And.intro E.cohomologyIsomorphismClosed E.homotopyEquivalenceClosed

end ClassifyingSpacesGroupsHSpacesCanonicalLaneLean
end HautevilleHouse