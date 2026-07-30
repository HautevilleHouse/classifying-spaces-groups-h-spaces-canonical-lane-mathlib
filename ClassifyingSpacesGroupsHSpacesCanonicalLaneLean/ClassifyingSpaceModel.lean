import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassifyingSpacesGroupsHSpacesCanonicalLaneLean

structure ClassifyingSpaceModel where
  group : Type u
  topology : TopologicalSpace group
  topologicalGroup : TopologicalGroup group
  universalSpace : Type v
  universalTopology : TopologicalSpace universalSpace
  universalPrincipalBundle : Prop
  classifyingMap : Prop
  homotopyType : Prop

def classifyingSpaceWitness (M : ClassifyingSpaceModel) : Prop :=
  M.universalPrincipalBundle ∧ M.classifyingMap ∧ M.homotopyType

end ClassifyingSpacesGroupsHSpacesCanonicalLaneLean
end HautevilleHouse