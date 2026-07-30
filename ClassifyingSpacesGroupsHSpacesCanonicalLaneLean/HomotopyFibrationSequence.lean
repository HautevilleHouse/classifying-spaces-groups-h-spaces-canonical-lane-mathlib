import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassifyingSpacesGroupsHSpacesCanonicalLaneLean.ClassifyingSpaceStructures

namespace HautevilleHouse
namespace ClassifyingSpacesGroupsHSpacesCanonicalLaneLean

structure HomotopyFibrationSequence where
  baseSpace : Type u
  totalSpace : Type v
  fiberSpace : Type w
  projection : totalSpace → baseSpace
  inclusion : fiberSpace → totalSpace
  exactSequence : (k : ℕ) → HomotopyGroup fiberSpace k → HomotopyGroup totalSpace k → HomotopyGroup baseSpace (k-1)
  weakHomotopyEquivalenceFiberTotalBase : IsWeakHomotopyEquivalence (λ x : totalSpace => (projection x, inclusion (some fiberSpace x)))

structure HomotopyFibrationSequenceEvidence (F : HomotopyFibrationSequence) where
  projectionContinuous : Continuous F.projection
  inclusionContinuous : Continuous F.inclusion
  exactSequenceDefined : ∀ (k : ℕ), IsExact (F.exactSequence k)
  weakHomotopyEquivalenceFiberTotalBaseClosed : F.weakHomotopyEquivalenceFiberTotalBase

def HomotopyFibrationSequenceClosed (F : HomotopyFibrationSequence) : Prop :=
  Continuous F.projection ∧ Continuous F.inclusion ∧
  (∀ (k : ℕ), IsExact (F.exactSequence k)) ∧
  F.weakHomotopyEquivalenceFiberTotalBase

end ClassifyingSpacesGroupsHSpacesCanonicalLaneLean
end HautevilleHouse