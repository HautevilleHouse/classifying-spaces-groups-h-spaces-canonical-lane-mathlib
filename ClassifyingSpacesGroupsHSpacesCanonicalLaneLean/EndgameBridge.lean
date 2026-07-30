import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassifyingSpacesGroupsHSpacesCanonicalLaneLean.ClassifyingSpaceStructures
import HautevilleHouse.ClassifyingSpacesGroupsHSpacesCanonicalLaneLean.GroupCohomologyFramework
import HautevilleHouse.ClassifyingSpacesGroupsHSpacesCanonicalLaneLean.HGaugeCategory

namespace HautevilleHouse
namespace ClassifyingSpacesGroupsHSpacesCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  (ClassifyingSpaceClosed A.object) ∧ (GroupCohomologyClosed A.object.group A.object.dimension A.object.cohomology)

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A := by
  constructor
  · exact A.object.classifyingSpaceEvidence
  · exact A.object.cohomologyEvidence

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A := by
  exact A.gateWitness

end ClassifyingSpacesGroupsHSpacesCanonicalLaneLean
end HautevilleHouse