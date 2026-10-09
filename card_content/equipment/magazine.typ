#import "../../card_structure/equipment_card.typ": equipment_card

#let magazine = equipment_card(
  "Chargeur",
  kind: "Atout, Module",
  slots: 1,
  dice: (),
  effect: [L'atout modifié a 1~utilisation de plus.],
  flavor: [Encore une. Juste une.],
)
