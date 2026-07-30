import ClassifyingSpacesGroupsHSpacesCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ClassifyingSpacesGroupsHSpacesCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def classifyingProjection : Projection ClassifyingEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem classifying_projection_idempotent (x : ClassifyingEndgameState) :
    classifyingProjection.toFun (classifyingProjection.toFun x) = classifyingProjection.toFun x := by
  exact classifyingProjection.idempotent x

end ClassifyingSpacesGroupsHSpacesCanonicalLaneLean
end HautevilleHouse