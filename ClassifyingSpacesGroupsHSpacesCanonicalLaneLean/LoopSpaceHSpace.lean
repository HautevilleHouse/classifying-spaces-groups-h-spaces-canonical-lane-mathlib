import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassifyingSpacesGroupsHSpacesCanonicalLaneLean.ClassifyingSpacesGroupsHSpaces

namespace HautevilleHouse
namespace ClassifyingSpacesGroupsHSpacesCanonicalLaneLean

structure LoopSpaceHSpacePackage (C : ClassifyingSpaceGroupHSpace) where
  loopSpace : Type u
  loopSpaceTopology : TopologicalSpace loopSpace
  loopSpaceBasepoint : loopSpace
  loopMultiplication : loopSpace → loopSpace → loopSpace
  loopInverse : loopSpace → loopSpace
  loopUnit : loopSpace
  hSpaceStructure : Prop
  homotopyAssociativity : Prop
  homotopyInverse : Prop
  homotopyUnit : Prop
  hSpaceStructureClosed : hSpaceStructure
  homotopyAssociativityClosed : homotopyAssociativity
  homotopyInverseClosed : homotopyInverse
  homotopyUnitClosed : homotopyUnit

theorem loop_space_h_space_package_closed (C : ClassifyingSpaceGroupHSpace)
    (L : LoopSpaceHSpacePackage C) :
    L.hSpaceStructure ∧ L.homotopyAssociativity ∧ L.homotopyInverse ∧ L.homotopyUnit := by
  exact And.intro L.hSpaceStructureClosed
    (And.intro L.homotopyAssociativityClosed
      (And.intro L.homotopyInverseClosed L.homotopyUnitClosed))

end ClassifyingSpacesGroupsHSpacesCanonicalLaneLean
end HautevilleHouse
