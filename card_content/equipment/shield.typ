#import "../../card_structure/equipment_card.typ": equipment_card

#let shield = equipment_card(
  "Bouclier",
  kind: "Équipement",
  storage: 2,
  cost: [un dé 3+],
  effect: [Garde 3.],
)
