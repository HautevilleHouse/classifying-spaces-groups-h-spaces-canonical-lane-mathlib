import ClassifyingSpacesGroupsHSpacesCanonicalLaneLean.CohomologyIsomorphism

namespace HautevilleHouse
namespace ClassifyingSpacesGroupsHSpacesCanonicalLaneLean

structure BrownRepresentabilityPackage where
  cohomologyTheory : Type
  representableSpace : ClassifyingSpace
  naturalIsomorphism : Prop
  wedgeAxiom : Prop
  MayerVietoris : Prop

structure BrownRepresentabilityEvidence (B : BrownRepresentabilityPackage) where
  naturalIsomorphismClosed : B.naturalIsomorphism
  wedgeAxiomClosed : B.wedgeAxiom
  mayerVietorisClosed : B.MayerVietoris

def BrownRepresentabilityClosed (B : BrownRepresentabilityPackage) : Prop :=
  B.naturalIsomorphism ∧ B.wedgeAxiom ∧ B.MayerVietoris

theorem brown_representability_closed_from_evidence (B : BrownRepresentabilityPackage) (E : BrownRepresentabilityEvidence B) :
    BrownRepresentabilityClosed B := by
  exact And.intro E.naturalIsomorphismClosed
    (And.intro E.wedgeAxiomClosed E.mayerVietorisClosed)

end ClassifyingSpacesGroupsHSpacesCanonicalLaneLean
end HautevilleHouse