#import "../../card_structure/equipment_card.typ": equipment_card

#let harpoon = equipment_card(
  "Harpon",
  kind: "Atout, Arme, Tir",
  charge: 2,
  dice: ("4+",),
  effect: [Infligez 3~dégâts à portée~3. Si l'engeance survit, Déplacer 2 sur elle.],
  flavor: [Elle voulait rester au fond.],
)
