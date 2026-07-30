import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassifyingSpacesGroupsHSpacesCanonicalLaneLean

structure ClassifyingSpaceGroupHSpace where
  group : Type u
  groupMul : group → group → group
  groupInv : group → group
  groupOne : group
  groupMulAssoc : ∀ a b c : group, groupMul (groupMul a b) c = groupMul a (groupMul b c)
  groupOneMul : ∀ a : group, groupMul groupOne a = a
  groupMulOne : ∀ a : group, groupMul a groupOne = a
  groupMulLeftInv : ∀ a : group, groupMul (groupInv a) a = groupOne
  hSpace : Type v
  hSpaceTopology : TopologicalSpace hSpace
  hSpaceBasepoint : hSpace
  hSpaceMul : hSpace → hSpace → hSpace
  hSpaceUnit : hSpace
  hSpaceMulAssoc : ∀ x y z : hSpace, hSpaceMul (hSpaceMul x y) z = hSpaceMul x (hSpaceMul y z)
  hSpaceLeftUnit : ∀ x : hSpace, hSpaceMul hSpaceUnit x = x
  hSpaceRightUnit : ∀ x : hSpace, hSpaceMul x hSpaceUnit = x
  classifyingSpace : Type w
  classifyingSpaceTopology : TopologicalSpace classifyingSpace
  classifyingSpaceIsClassifying : Prop
  groupInclusion : group → (classifyingSpace → classifyingSpace)
  groupInclusionHomomorphism : Prop
  homotopyEquivalence : Prop

end ClassifyingSpacesGroupsHSpacesCanonicalLaneLean
end HautevilleHouse
