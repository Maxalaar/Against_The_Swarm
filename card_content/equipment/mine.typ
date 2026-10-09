#import "../../card_structure/equipment_card.typ": equipment_card

#let mine = equipment_card(
  "Mine",
  kind: "Atout, Arme, Explosif",
  charge: 1,
  dice: ("4+",),
  effect: [Armer 1, jusqu'à un maximum de 4~marqueurs.

    Pendant votre tour, vous pouvez retirer 1~marqueur pour infliger 2~dégâts à portée~1, à une engeance qui n'a pas subi de dégâts de cet atout ce tour.],
  uses: 2,
  flavor: [Regarde où tu mets les pattes.],
)
