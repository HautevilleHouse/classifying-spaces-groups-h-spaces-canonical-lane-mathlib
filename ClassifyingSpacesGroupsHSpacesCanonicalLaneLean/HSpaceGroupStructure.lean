import ClassifyingSpacesGroupsHSpacesCanonicalLaneLean.ClassifyingSpaceConstruction

namespace HautevilleHouse
namespace ClassifyingSpacesGroupsHSpacesCanonicalLaneLean

structure HSpaceGroupPackage where
  group : HSpaceGroup
  classifyingSpace : ClassifyingSpace
  multiplicationMap : classifyingSpace.carrier → classifyingSpace.carrier → classifyingSpace.carrier
  continuityMultiplication : Continuous (Function.uncurry multiplicationMap)
  homotopyAssociative : Prop
  homotopyInverse : Prop
  homotopyUnit : Prop

structure HSpaceGroupEvidence (P : HSpaceGroupPackage) where
  homotopyAssociativeClosed : P.homotopyAssociative
  homotopyInverseClosed : P.homotopyInverse
  homotopyUnitClosed : P.homotopyUnit

def HSpaceGroupClosed (P : HSpaceGroupPackage) : Prop :=
  P.homotopyAssociative ∧ P.homotopyInverse ∧ P.homotopyUnit

theorem hspace_group_closed_from_evidence (P : HSpaceGroupPackage) (E : HSpaceGroupEvidence P) :
    HSpaceGroupClosed P := by
  exact And.intro E.homotopyAssociativeClosed
    (And.intro E.homotopyInverseClosed E.homotopyUnitClosed)

end ClassifyingSpacesGroupsHSpacesCanonicalLaneLean
end HautevilleHouse