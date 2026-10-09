#import "../../card_structure/equipment_card.typ": equipment_card

#let flamethrower = equipment_card(
  "Lance-flammes",
  kind: "Atout, Arme",
  storage: 3,
  cost: [une paire],
  effect: [Dégât 1 à 2 créatures maximum en zone 1 et à 2 créatures maximum en zone 2 de votre secteur.],
  uses: 2,
)
