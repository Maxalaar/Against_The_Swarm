#import "../../card_structure/equipment_card.typ": equipment_card

#let grapple = equipment_card(
  "Grappin",
  kind: "Atout, Matériel",
  slots: 1,
  dice: ("3+",),
  effect: [Déplacer 2.],
  flavor: [Viens par ici, toi.],
)
