import ClassifyingSpacesGroupsHSpacesCanonicalLaneLean.HSpaceGroupStructure

namespace HautevilleHouse
namespace ClassifyingSpacesGroupsHSpacesCanonicalLaneLean

structure ClassifyingSpacePackage where
  group : HSpaceGroup
  space : ClassifyingSpace
  universalBundle : Type
  baseSpace : Type
  totalSpace : Type
  projectionMap : totalSpace → baseSpace
  principalAction : group.group → totalSpace → totalSpace
  localTrivialization : Prop
  universalProperty : Prop

structure ClassifyingSpaceEvidence (C : ClassifyingSpacePackage) where
  localTrivializationClosed : C.localTrivialization
  universalPropertyClosed : C.universalProperty

def ClassifyingSpaceClosed (C : ClassifyingSpacePackage) : Prop :=
  C.localTrivialization ∧ C.universalProperty

theorem classifying_space_closed_from_evidence (C : ClassifyingSpacePackage) (E : ClassifyingSpaceEvidence C) :
    ClassifyingSpaceClosed C := by
  exact And.intro E.localTrivializationClosed E.universalPropertyClosed

end ClassifyingSpacesGroupsHSpacesCanonicalLaneLean
end HautevilleHouse