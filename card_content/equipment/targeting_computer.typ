#import "../../card_structure/equipment_card.typ": equipment_card

#let targeting_computer = equipment_card(
  "Calculateur de tir",
  kind: "Atout, Matériel",
  slots: 1,
  dice: ("5+",),
  effect: [Réglez un autre de vos dés sur la face de votre choix.],
  flavor: [Il a toujours raison. C'est agaçant.],
)
