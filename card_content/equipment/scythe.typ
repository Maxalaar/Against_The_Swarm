#import "../../card_structure/equipment_card.typ": equipment_card

#let scythe = equipment_card(
  "Faux",
  kind: "Atout, Arme, Mêlée",
  slots: 2,
  dice: ("5+",),
  effect: [Ciblez jusqu'à 3~engeances à portée~1. Infligez 3~dégâts à chacune.],
  flavor: [On récolte ce qui dépasse.],
)
