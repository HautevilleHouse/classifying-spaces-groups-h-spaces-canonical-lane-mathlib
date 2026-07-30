import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ClassifyingSpacesGroupsHSpacesCanonicalLaneLean

structure ClassifyingSpace (G : Type u) [TopologicalSpace G] [Group G] where
  baseSpace : Type v
  baseTopology : TopologicalSpace baseSpace
  totalSpace : Type w
  totalTopology : TopologicalSpace totalSpace
  projectionMap : totalSpace → baseSpace
  fiber : G → totalSpace → totalSpace
  principalBundle : Prop
  universalProperty : Prop
  contractibleTotalSpace : Prop
  baseIsClassifying : Prop
  fiberIsGroupAction : Prop
  principalBundleTerm : principalBundle
  universalPropertyTerm : universalProperty
  contractibleTotalSpaceTerm : contractibleTotalSpace
  baseIsClassifyingTerm : baseIsClassifying
  fiberIsGroupActionTerm : fiberIsGroupAction

structure ClassifyingSpaceEvidence (G : Type u) [TopologicalSpace G] [Group G] (B : ClassifyingSpace G) where
  principalBundleClosed : B.principalBundle
  universalPropertyClosed : B.universalProperty
  contractibleTotalSpaceClosed : B.contractibleTotalSpace
  baseIsClassifyingClosed : B.baseIsClassifying
  fiberIsGroupActionClosed : B.fiberIsGroupAction

def ClassifyingSpaceClosed (G : Type u) [TopologicalSpace G] [Group G] (B : ClassifyingSpace G) : Prop :=
  B.principalBundle ∧ B.universalProperty ∧ B.contractibleTotalSpace ∧ B.baseIsClassifying ∧ B.fiberIsGroupAction

theorem classifying_space_closed_from_evidence (G : Type u) [TopologicalSpace G] [Group G] (B : ClassifyingSpace G) (E : ClassifyingSpaceEvidence G B) : ClassifyingSpaceClosed G B := by
  exact And.intro E.principalBundleClosed (And.intro E.universalPropertyClosed (And.intro E.contractibleTotalSpaceClosed (And.intro E.baseIsClassifyingClosed E.fiberIsGroupActionClosed)))

end ClassifyingSpacesGroupsHSpacesCanonicalLaneLean
end HautevilleHouse