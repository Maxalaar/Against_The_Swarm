#import "../../card_structure/equipment_card.typ": equipment_card

#let pistol = equipment_card(
  "Pistolet",
  kind: "Atout, Arme",
  charge: 1,
  dice: ("4+",),
  effect: [Infligez 2~dégâts à portée~2.],
  uses: 3,
)
