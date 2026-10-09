#import "../../card_structure/equipment_card.typ": equipment_card

#let magazine = equipment_card(
  "Chargeur",
  kind: "Atout, Matériel",
  slots: 1,
  dice: ("",),
  effect: [Un de vos autres atouts gagne 1~utilisation ce tour.],
  flavor: [Encore une. Juste une.],
)
