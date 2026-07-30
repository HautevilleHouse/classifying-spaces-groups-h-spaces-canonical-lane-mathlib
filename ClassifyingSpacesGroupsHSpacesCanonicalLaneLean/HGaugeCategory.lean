import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ClassifyingSpacesGroupsHSpacesCanonicalLaneLean.ClassifyingSpaceStructures

namespace HautevilleHouse
namespace ClassifyingSpacesGroupsHSpacesCanonicalLaneLean

structure HGaugeCategory where
  objects : Type u
  morphisms : objects → objects → Type v
  identity : (x : objects) → morphisms x x
  composition : {x y z : objects} → morphisms x y → morphisms y z → morphisms x z
  associativity : ∀ {w x y z} (f : morphisms w x) (g : morphisms x y) (h : morphisms y z),
    composition (composition f g) h = composition f (composition g h)
  identityLeft : ∀ {x y} (f : morphisms x y), composition (identity x) f = f
  identityRight : ∀ {x y} (f : morphisms x y), composition f (identity y) = f
  objectsAreTypes : objects = Type u
  morphismsAreHGauges : ∀ (X Y : objects), morphisms X Y = HGauge X Y

structure HGaugeCategoryEvidence (C : HGaugeCategory) where
  categoryAxionsClosed : IsCategory C
  objectsAreTypesClosed : C.objectsAreTypes
  morphismsAreHGaugesClosed : C.morphismsAreHGauges

def HGaugeCategoryClosed (C : HGaugeCategory) : Prop :=
  IsCategory C ∧ C.objectsAreTypes ∧ C.morphismsAreHGauges

end ClassifyingSpacesGroupsHSpacesCanonicalLaneLean
end HautevilleHouse