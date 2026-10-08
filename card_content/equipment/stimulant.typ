#import "../../card_structure/equipment_card.typ": equipment_card

#let stimulant = equipment_card(
  "Stimulant",
  kind: "Équipement",
  storage: 1,
  cost: [un dé quelconque],
  effect: [Relancez jusqu'à 2 de vos autres dés.],
)
