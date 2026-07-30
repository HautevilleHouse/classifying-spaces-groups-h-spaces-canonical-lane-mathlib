import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassifyingSpacesGroupsHSpacesCanonicalLaneLean.ClassifyingSpacesGroupsHSpaces

namespace HautevilleHouse
namespace ClassifyingSpacesGroupsHSpacesCanonicalLaneLean

structure FibrationSequencePackage (C : ClassifyingSpaceGroupHSpace) where
  baseSpace : C.classifyingSpace
  totalSpace : Type u
  totalSpaceTopology : TopologicalSpace totalSpace
  fibrationMap : totalSpace → baseSpace
  fiberSpace : C.hSpace
  fiberInclusion : fiberSpace → totalSpace
  pathLiftingProperty : Prop
  homotopyLiftingProperty : Prop
  longExactHomotopySequence : Prop
  pathLiftingPropertyClosed : pathLiftingProperty
  homotopyLiftingPropertyClosed : homotopyLiftingProperty
  longExactHomotopySequenceClosed : longExactHomotopySequence

theorem fibration_sequence_package_closed (C : ClassifyingSpaceGroupHSpace)
    (F : FibrationSequencePackage C) :
    F.pathLiftingProperty ∧ F.homotopyLiftingProperty ∧ F.longExactHomotopySequence := by
  exact And.intro F.pathLiftingPropertyClosed
    (And.intro F.homotopyLiftingPropertyClosed F.longExactHomotopySequenceClosed)

end ClassifyingSpacesGroupsHSpacesCanonicalLaneLean
end HautevilleHouse
