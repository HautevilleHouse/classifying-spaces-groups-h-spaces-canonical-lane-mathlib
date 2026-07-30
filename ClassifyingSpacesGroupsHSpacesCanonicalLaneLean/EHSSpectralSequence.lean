import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassifyingSpacesGroupsHSpacesCanonicalLaneLean.ClassifyingSpaceModel

namespace HautevilleHouse
namespace ClassifyingSpacesGroupsHSpacesCanonicalLaneLean

structure EHSSpectralSequence (G : Type u) [TopologicalSpace G] [Group G] (H : Type v) [TopologicalSpace H] [Group H] where
  fibrationSequence : Prop
  E2Page : Prop
  differentials : Prop
  convergence : Prop
  edgeHomomorphisms : Prop

structure EHSSpectralSequenceEvidence {G : Type u} [TopologicalSpace G] [Group G] {H : Type v} [TopologicalSpace H] [Group H] (E : EHSSpectralSequence G H) where
  fibrationSequenceClosed : E.fibrationSequence
  E2PageClosed : E.E2Page
  differentialsClosed : E.differentials
  convergenceClosed : E.convergence
  edgeHomomorphismsClosed : E.edgeHomomorphisms

def EHSSpectralSequenceClosed {G : Type u} [TopologicalSpace G] [Group G] {H : Type v} [TopologicalSpace H] [Group H] (E : EHSSpectralSequence G H) : Prop :=
  E.fibrationSequence ∧ E.E2Page ∧ E.differentials ∧ E.convergence ∧ E.edgeHomomorphisms

theorem ehs_spectral_sequence_closed_from_evidence {G : Type u} [TopologicalSpace G] [Group G] {H : Type v} [TopologicalSpace H] [Group H] (E : EHSSpectralSequence G H) (Ev : EHSSpectralSequenceEvidence E) : EHSSpectralSequenceClosed E := by
  exact And.intro Ev.fibrationSequenceClosed (And.intro Ev.E2PageClosed (And.intro Ev.differentialsClosed (And.intro Ev.convergenceClosed Ev.edgeHomomorphismsClosed)))

end ClassifyingSpacesGroupsHSpacesCanonicalLaneLean
end HautevilleHouse
