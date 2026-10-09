#import "../../card_structure/equipment_card.typ": equipment_card

#let calibrator = equipment_card(
  "Calibreur",
  kind: "Atout, Arme, Tir",
  charge: 2,
  dice: ("X", "Y",),
  effect: [Infligez X~dégâts à portée~Y.],
  flavor: [Loin ou fort. Rarement les deux.],
)
