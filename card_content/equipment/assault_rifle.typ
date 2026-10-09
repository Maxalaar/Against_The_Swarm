#import "../../card_structure/equipment_card.typ": equipment_card

#let assault_rifle = equipment_card(
  "Fusil d'assaut",
  kind: "Atout, Arme",
  charge: 2,
  dice: ("3+",),
  effect: [Infligez 2~dégâts à portée~3.],
  uses: 3,
  flavor: [Trois balles, trois avis tranchés.],
)
