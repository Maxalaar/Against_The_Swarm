#import "../../card_structure/equipment_card.typ": equipment_card

#let pistol = equipment_card(
  "Pistolet",
  kind: "Arme",
  storage: 1,
  cost: [un dé 4+],
  effect: [Dégât 2 à une cible à portée 2.],
  uses: 3,
)
