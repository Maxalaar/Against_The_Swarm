#import "../../card_structure/equipment_card.typ": equipment_card

#let decoy = equipment_card(
  "Leurre",
  kind: "Atout, Matériel",
  storage: 1,
  cost: [un dé 3+],
  effect: [Déplacer 1, sur 2 créatures maximum.],
)
