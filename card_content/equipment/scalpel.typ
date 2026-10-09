#import "../../card_structure/equipment_card.typ": equipment_card

#let scalpel = equipment_card(
  "Scalpel",
  kind: "Atout, Matériel",
  charge: 1,
  dice: ("3+",),
  effect: [Détruisez une Mutation attachée à une engeance à portée~2. Soin 2.],
  flavor: [Ça repousse ? On recoupe.],
)
