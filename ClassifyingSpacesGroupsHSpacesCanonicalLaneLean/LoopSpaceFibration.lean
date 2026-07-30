import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassifyingSpacesGroupsHSpacesCanonicalLaneLean

structure LoopSpaceFibration (B : Type) [TopologicalSpace B] where
  basePoint : B
  loopSpace : Type
  loopTopology : TopologicalSpace loopSpace
  fibration : loopSpace → B
  continuousFibration : Continuous fibration
  fiberHomotopyEquivalent : (x : B) → Trivial
  longExactSequenceExists : Prop

structure LoopSpaceFibrationEvidence {B : Type} [TopologicalSpace B]
    (L : LoopSpaceFibration B) where
  longExactSequenceExistsClosed : L.longExactSequenceExists

def LoopSpaceFibrationClosed {B : Type} [TopologicalSpace B]
    (L : LoopSpaceFibration B) : Prop :=
  L.longExactSequenceExists

theorem loopSpaceFibration_closed_from_evidence
    {B : Type} [TopologicalSpace B] (L : LoopSpaceFibration B)
    (E : LoopSpaceFibrationEvidence L) : LoopSpaceFibrationClosed L := by
  exact E.longExactSequenceExistsClosed

end ClassifyingSpacesGroupsHSpacesCanonicalLaneLean
end HautevilleHouse