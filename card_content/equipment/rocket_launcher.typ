#import "../../card_structure/equipment_card.typ": equipment_card

#let rocket_launcher = equipment_card(
  "Lance-roquettes",
  kind: "Atout, Arme, Explosif",
  charge: 3,
  dice: ("X", "X",),
  effect: [Infligez 6~dégâts à portée~3. Ciblez jusqu'à 2~autres engeances de la même zone. Infligez 3~dégâts à chacune.],
)
