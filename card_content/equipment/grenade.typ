#import "../../card_structure/equipment_card.typ": equipment_card

#let grenade = equipment_card(
  "Grenade",
  kind: "Arme",
  storage: 1,
  cost: [un dé 5+],
  effect: [2 dégâts à 3 créatures maximum d'une même zone, à portée 2.],
)
