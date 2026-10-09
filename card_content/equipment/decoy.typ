#import "../../card_structure/equipment_card.typ": equipment_card

#let decoy = equipment_card(
  "Leurre",
  kind: "Atout, Matériel",
  charge: 1,
  dice: ("3+",),
  effect: [Déplacer 1 sur jusqu'à 2 créatures différentes.],
)
