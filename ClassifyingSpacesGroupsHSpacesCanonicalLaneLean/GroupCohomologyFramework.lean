import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassifyingSpacesGroupsHSpacesCanonicalLaneLean.ClassifyingSpaceStructures

namespace HautevilleHouse
namespace ClassifyingSpacesGroupsHSpacesCanonicalLaneLean

structure GroupCohomology (G : Type u) (n : ℕ) where
  cochainComplex : ChainComplex (AbelianGroup ℤ) ℕ
  cocycleSpace : Submodule (AbelianGroup ℤ) (cochainComplex.Hom n)
  coboundarySpace : Submodule (AbelianGroup ℤ) (cochainComplex.Hom (n-1))
  cohomologyGroup : AbelianGroup ℤ
  isomorphismToHnative : cohomologyGroup ≅ HomotopyGroup (EilenbergMacLaneSpace G n) n

structure GroupCohomologyEvidence (G : Type u) (n : ℕ) (C : GroupCohomology G n) where
  cochainComplexDefined : C.cochainComplex.IsDefined
  cocycleSpaceClosed : C.cocycleSpace.IsSubmodule
  coboundarySpaceClosed : C.coboundarySpace.IsSubmodule
  cohomologyGroupClosed : C.cohomologyGroup.IsAbelianGroup
  isomorphismToHnativeClosed : C.isomorphismToHnative.IsIso

def GroupCohomologyClosed (G : Type u) (n : ℕ) (C : GroupCohomology G n) : Prop :=
  C.cochainComplex.IsDefined ∧ C.cocycleSpace.IsSubmodule ∧
  C.coboundarySpace.IsSubmodule ∧ C.cohomologyGroup.IsAbelianGroup ∧
  C.isomorphismToHnative.IsIso

end ClassifyingSpacesGroupsHSpacesCanonicalLaneLean
end HautevilleHouse