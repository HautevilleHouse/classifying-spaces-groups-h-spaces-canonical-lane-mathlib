import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassifyingSpacesGroupsHSpacesCanonicalLaneLean

structure LoopSpaceModel where
  pointedSpace : Type u
  topology : TopologicalSpace pointedSpace
  basepoint : pointedSpace
  loopSpace : Type v
  loopTopology : TopologicalSpace loopSpace
  groupStructure : LoopGroup loopSpace
  hGroupStructure : HGroupStructure loopSpace

def LoopSpaceWitness (L : LoopSpaceModel) : Prop :=
  L.groupStructure ∧ L.hGroupStructure

end ClassifyingSpacesGroupsHSpacesCanonicalLaneLean
end HautevilleHouse