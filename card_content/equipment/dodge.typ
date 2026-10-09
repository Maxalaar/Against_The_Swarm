#import "../../card_structure/equipment_card.typ": equipment_card

#let dodge = equipment_card(
  "Esquive",
  kind: "Atout, Technique",
  slots: 1,
  dice: ("4+",),
  effect: [Garde 2.],
  flavor: [Raté.],
)
