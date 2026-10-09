#import "../../card_structure/equipment_card.typ": equipment_card

#let loaded_die = equipment_card(
  "Dé pipé",
  kind: "Atout, Technique",
  charge: 1,
  dice: ("",),
  effect: [Ajoutez ou retirez 1 à un autre de vos dés.],
  uses: 2,
  flavor: [La chance, ça se travaille.],
)
