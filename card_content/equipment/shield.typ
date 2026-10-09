#import "../../card_structure/equipment_card.typ": equipment_card

#let shield = equipment_card(
  "Bouclier",
  kind: "Atout, Matériel",
  slots: 2,
  dice: ("3+",),
  effect: [Garde 3.],
  flavor: [Derrière moi.],
)
