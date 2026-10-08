#import "../../card_structure/equipment_card.typ": equipment_card

#let move = equipment_card(
  "Déplacement",
  kind: "Carte de base",
  storage: 0,
  cost: [un dé 4+],
  effect: [Déplacer 1.],
)
