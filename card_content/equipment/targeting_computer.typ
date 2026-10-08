#import "../../card_structure/equipment_card.typ": equipment_card

#let targeting_computer = equipment_card(
  "Calculateur de tir",
  kind: "Équipement",
  storage: 1,
  cost: [un 1 ou un 2],
  effect: [Placez un de vos autres dés sur la face de votre choix.],
)
