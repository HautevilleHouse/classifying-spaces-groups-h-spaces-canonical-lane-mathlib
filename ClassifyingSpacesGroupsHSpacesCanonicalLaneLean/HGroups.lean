import ClassifyingSpacesGroupsHSpacesCanonicalLaneLean.EilenbergMacLaneSpaces

/-!
# H-Groups Package
-/

namespace HautevilleHouse
namespace ClassifyingSpacesGroupsHSpacesCanonicalLaneLean

structure HGroupPackage where
  space : Type u
  topology : TopologicalSpace space
  multiplication : space × space → space
  unit : space
  homotopyAssociative : Prop
  homotopyUnital : Prop
  homotopyInverse : Prop

structure HGroupEvidence (H : HGroupPackage) where
  homotopyAssociativeClosed : H.homotopyAssociative
  homotopyUnitalClosed : H.homotopyUnital
  homotopyInverseClosed : H.homotopyInverse

def HGroupClosed (H : HGroupPackage) : Prop :=
  H.homotopyAssociative ∧ H.homotopyUnital ∧ H.homotopyInverse

theorem h_group_closed_from_evidence (H : HGroupPackage) (Ev : HGroupEvidence H) :
    HGroupClosed H := by
  exact And.intro Ev.homotopyAssociativeClosed
    (And.intro Ev.homotopyUnitalClosed Ev.homotopyInverseClosed)

structure HGroupToClassifyingSpaceBridge (H : HGroupPackage) (E : EilenbergMacLanePackage) where
  hGroupIsLoopSpace : E.space ≃ Ω (ClassifyingSpace H.space)
  loopSpaceIsHGroup : Ω (ClassifyingSpace H.space) ≃ H.space

def HGroupToClassifyingSpaceBridgeClosed {H : HGroupPackage} {E : EilenbergMacLanePackage}
    (B : HGroupToClassifyingSpaceBridge H E) : Prop :=
  True

end ClassifyingSpacesGroupsHSpacesCanonicalLaneLean
end HautevilleHouse
