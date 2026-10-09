#import "../../card_structure/equipment_card.typ": equipment_card

#let stimulant = equipment_card(
  "Stimulant",
  kind: "Atout, Matériel",
  charge: 1,
  dice: ("",),
  effect: [Relancez jusqu'à 2 autres dés.],
  flavor: [Ça brûle. C'est que ça marche.],
)
