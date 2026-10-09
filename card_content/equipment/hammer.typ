#import "../../card_structure/equipment_card.typ": equipment_card

#let hammer = equipment_card(
  "Marteau",
  kind: "Atout, Arme, Mêlée",
  charge: 2,
  dice: ("5+",),
  effect: [Infligez 6~dégâts à portée~1.],
  flavor: [Un problème, un coup.],
)
