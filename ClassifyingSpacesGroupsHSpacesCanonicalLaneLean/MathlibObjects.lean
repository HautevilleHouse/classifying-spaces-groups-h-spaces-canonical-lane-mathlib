import ClassifyingSpacesGroupsHSpacesCanonicalLaneLean.ClassifyingSpaces
import canonicalLaneMathlibCore

namespace HautevilleHouse
namespace ClassifyingSpacesGroupsHSpacesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure ClassifyingSpaceAdmittedObject where
  group : Type
  groupStructure : Group group
  classifyingSpace : TopologicalSpace.Type
  principalBundle : PrincipalBundle group classifyingSpace
  universalPropertyHolds : Prop
  conclusion : universalPropertyHolds

structure ClassifyingSpaceEndgameState where
  object : ClassifyingSpaceAdmittedObject

def ClassifyingSpaceWitnessClosed (O : ClassifyingSpaceAdmittedObject) : Prop :=
  O.universalPropertyHolds

end ClassifyingSpacesGroupsHSpacesCanonicalLaneLean
end HautevilleHouse
