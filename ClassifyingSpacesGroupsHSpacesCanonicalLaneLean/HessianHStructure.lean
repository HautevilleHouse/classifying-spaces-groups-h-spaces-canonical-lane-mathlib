import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassifyingSpacesGroupsHSpacesCanonicalLaneLean

structure HSpectivePackage where
  H : Type u
  groupStructure : Group H
  topologicalGroup : TopologicalSpace H
  topologicalGroupCompatible : ContinuousMul H
  X : Type v
  XTopology : TopologicalSpace X
  XTopologicalGroup : TopologicalGroup X
  homomorphism : H →* X
  homContinuous : Continuous homomorphism
  kernel : Subgroup H
  kernelTopology : TopologicalSpace kernel
  kernelIsClosed : IsClosed (kernel : Set H)
  hspaceStructure : HomotopyEquivalent (H ⧸ kernel) X

structure HSpectiveEvidence (P : HSpectivePackage) where
  homContinuousClosed : P.homContinuous
  kernelIsClosedClosed : P.kernelIsClosed
  hspaceStructureClosed : P.hspaceStructure

def HSpectiveClosed (P : HSpectivePackage) : Prop :=
  P.homContinuous ∧ P.kernelIsClosed ∧ P.hspaceStructure

theorem hspective_closed_from_evidence (P : HSpectivePackage) (E : HSpectiveEvidence P) :
    HSpectiveClosed P := by
  exact And.intro E.homContinuousClosed
    (And.intro E.kernelIsClosedClosed E.hspaceStructureClosed)

end ClassifyingSpacesGroupsHSpacesCanonicalLaneLean
end HautevilleHouse