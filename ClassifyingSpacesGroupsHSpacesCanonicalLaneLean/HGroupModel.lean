import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassifyingSpacesGroupsHSpacesCanonicalLaneLean

structure HGroupModel where
  space : Type u
  topology : TopologicalSpace space
  multiplication : space → space → space
  inverse : space → space
  basepoint : space
  homotopyAssociative : Prop
  homotopyInverse : Prop
  homotopyIdentity : Prop

def HGroupSpaceWitness (H : HGroupModel) : Prop :=
  H.homotopyAssociative ∧ H.homotopyInverse ∧ H.homotopyIdentity

end ClassifyingSpacesGroupsHSpacesCanonicalLaneLean
end HautevilleHouse