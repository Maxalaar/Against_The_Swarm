#import "../../card_structure/equipment_card.typ": equipment_card

#let arc = equipment_card(
  "Arc électrique",
  kind: "Atout, Arme, Énergie",
  charge: 2,
  dice: ("4+",),
  effect: [Infligez 2~dégâts à portée~2. Si l'engeance est détruite, recommencez sur une autre engeance de sa zone, jusqu'à 3~fois.],
)
