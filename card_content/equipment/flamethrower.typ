#import "../../card_structure/equipment_card.typ": equipment_card

#let flamethrower = equipment_card(
  "Lance-flammes",
  kind: "Atout, Arme, Énergie",
  charge: 3,
  dice: ("X", "X",),
  effect: [Ciblez jusqu'à 4 engeances à portée~2, dont 2 au maximum par zone. Infligez 1~dégât à chacune.],
  uses: 2,
)
