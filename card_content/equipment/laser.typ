#import "../../card_structure/equipment_card.typ": equipment_card

#let laser = equipment_card(
  "Laser",
  kind: "Atout, Arme, Énergie",
  slots: 3,
  dice: ("X", "X+1", "X+2",),
  effect: [Ciblez une engeance à portée exactement~1, une à portée exactement~2 et une à portée exactement~3. Infligez 4~dégâts à chacune.],
  flavor: [Tout droit, à travers tout.],
)
