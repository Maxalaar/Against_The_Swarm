#import "../../card_structure/equipment_card.typ": equipment_card

#let revive = equipment_card(
  "Réanimation",
  kind: "Carte de base",
  storage: 0,
  cost: [deux 6],
  effect: [Faites revivre un joueur adjacent à 1 PV. Il perd 2 PA pour le reste de la vague (minimum 1 PA).],
)
