#import "../../card_structure/equipment_card.typ": equipment_card

#let cleaver = equipment_card(
  "Couperet",
  kind: "Atout, Arme, Mêlée",
  charge: 1,
  dice: ("",),
  effect: [Détruisez un jeton à portée~1.],
  uses: 2,
  flavor: [Les petits d'abord.],
)
