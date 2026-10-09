#import "../../card_structure/equipment_card.typ": equipment_card

#let medkit = equipment_card(
  "Trousse de secours",
  kind: "Atout, Matériel",
  charge: 1,
  dice: ("X", "X",),
  effect: [Soin 2 sur vous ou un joueur adjacent.],
)
