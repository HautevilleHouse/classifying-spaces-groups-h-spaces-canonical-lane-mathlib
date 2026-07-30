import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassifyingSpacesGroupsHSpacesCanonicalLaneLean

structure HSpace where
  space : Type u
  topology : TopologicalSpace space
  multiplication : space → space → space
  multiplicationContinuous : Continuous (Function.uncurry multiplication)
  basepoint : space
  leftUnit : ∀ x : space, multiplication basepoint x = x
  rightUnit : ∀ x : space, multiplication x basepoint = x
  homotopyAssociative : Prop
  homotopyInverse : Prop

structure HSpaceEvidence (H : HSpace) where
  multiplicationContinuousClosed : H.multiplicationContinuous
  leftUnitClosed : H.leftUnit
  rightUnitClosed : H.rightUnit
  homotopyAssociativeClosed : H.homotopyAssociative
  homotopyInverseClosed : H.homotopyInverse

def HSpaceClosed (H : HSpace) : Prop :=
  H.multiplicationContinuous ∧ H.leftUnit ∧ H.rightUnit ∧ H.homotopyAssociative ∧ H.homotopyInverse

theorem hspace_closed_from_evidence (H : HSpace) (E : HSpaceEvidence H) : HSpaceClosed H := by
  refine And.intro E.multiplicationContinuousClosed ?_
  refine And.intro E.leftUnitClosed ?_
  refine And.intro E.rightUnitClosed ?_
  refine And.intro E.homotopyAssociativeClosed E.homotopyInverseClosed

end ClassifyingSpacesGroupsHSpacesCanonicalLaneLean
end HautevilleHouse