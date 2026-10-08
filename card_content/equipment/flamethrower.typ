#import "../../card_structure/equipment_card.typ": equipment_card

#let flamethrower = equipment_card(
  "Lance-flammes",
  kind: "Arme",
  storage: 3,
  cost: [une paire],
  effect: [1 dégât à 5 créatures maximum à portée 2.],
  uses: 2,
)
