#import "../../card_structure/equipment_card.typ": equipment_card

#let medkit = equipment_card(
  "Trousse de secours",
  kind: "Équipement",
  storage: 1,
  cost: [une paire],
  effect: [Vous ou un joueur adjacent regagnez 2 PV.],
)
