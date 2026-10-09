#import "../../card_structure/equipment_card.typ": equipment_card

#let shotgun = equipment_card(
  "Fusil à pompe",
  kind: "Arme",
  storage: 2,
  cost: [un dé 3+],
  effect: [Dégât 2 à 2 créatures maximum d'une même zone, à portée 2.],
)
