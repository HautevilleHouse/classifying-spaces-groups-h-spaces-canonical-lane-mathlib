import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassifyingSpacesGroupsHSpacesCanonicalLaneLean.HSpaceStructure
import HautevilleHouse.ClassifyingSpacesGroupsHSpacesCanonicalLaneLean.ClassifyingSpaceModel

namespace HautevilleHouse
namespace ClassifyingSpacesGroupsHSpacesCanonicalLaneLean

structure LoopSpaceRecognition (G : Type u) [TopologicalSpace G] [Group G] where
  loopSpace : Type v
  homotopyEquivalence : ClassifyingSpaceModel (Ω G) → ClassifyingSpaceModel G
  homotopyInverse : ClassifyingSpaceModel G → ClassifyingSpaceModel (Ω G)
  compositionIdentity : Prop
  hspaceCompatibility : HSpaceStructure (Ω G) → Prop

structure LoopSpaceRecognitionEvidence {G : Type u} [TopologicalSpace G] [Group G] (L : LoopSpaceRecognition G) where
  compositionIdentityClosed : L.compositionIdentity
  hspaceCompatibilityClosed : ∀ (H : HSpaceStructure (Ω G)), L.hspaceCompatibility H

def LoopSpaceRecognitionClosed {G : Type u} [TopologicalSpace G] [Group G] (L : LoopSpaceRecognition G) : Prop :=
  L.compositionIdentity ∧ ∀ (H : HSpaceStructure (Ω G)), L.hspaceCompatibility H

theorem loop_space_recognition_closed_from_evidence {G : Type u} [TopologicalSpace G] [Group G] (L : LoopSpaceRecognition G) (E : LoopSpaceRecognitionEvidence G) : LoopSpaceRecognitionClosed L := by
  exact And.intro E.compositionIdentityClosed E.hspaceCompatibilityClosed

end ClassifyingSpacesGroupsHSpacesCanonicalLaneLean
end HautevilleHouse
