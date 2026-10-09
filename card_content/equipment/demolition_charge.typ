#import "../../card_structure/equipment_card.typ": equipment_card

#let demolition_charge = equipment_card(
  "Charge de démolition",
  kind: "Atout, Arme, Explosif",
  charge: 1,
  dice: ("5+",),
  effect: [Infligez 4~dégâts à portée~1. Si la cible est une Structure, infligez 8~dégâts à la place.],
  flavor: [Reculez. Non, plus loin.],
)
