#import "../../card_structure/equipment_card.typ": equipment_card

#let freezer = equipment_card(
  "Givreur",
  kind: "Atout, Matériel",
  charge: 1,
  dice: ("X",),
  effect: [Activez une engeance à portée~2 dont la Menace est inférieure ou égale à X.],
  flavor: [Reste là. Ne bouge pas.],
)
