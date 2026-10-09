#import "../../card_structure/equipment_card.typ": equipment_card

#let freezer = equipment_card(
  "Givreur",
  kind: "Atout, Matériel",
  slots: 1,
  dice: ("X",),
  effect: [Paralyser X à portée~2.],
  flavor: [Reste là. Ne bouge pas.],
)
