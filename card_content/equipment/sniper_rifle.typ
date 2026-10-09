#import "../../card_structure/equipment_card.typ": equipment_card

#let sniper_rifle = equipment_card(
  "Fusil de précision",
  kind: "Arme",
  storage: 2,
  cost: [un 6],
  effect: [Dégât 4 à une cible à portée 4.],
)
