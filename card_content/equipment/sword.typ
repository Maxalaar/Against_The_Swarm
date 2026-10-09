#import "../../card_structure/equipment_card.typ": equipment_card

#let sword = equipment_card(
  "Épée",
  kind: "Atout, Arme, Mêlée",
  slots: 1,
  dice: ("3+",),
  effect: [Infligez 3~dégâts à portée~1.],
  uses: 2,
  flavor: [Pas de chargeur. Pas d'excuse.],
)
