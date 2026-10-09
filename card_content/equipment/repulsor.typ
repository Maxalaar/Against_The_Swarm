#import "../../card_structure/equipment_card.typ": equipment_card

#let repulsor = equipment_card(
  "Onde répulsive",
  kind: "Atout, Matériel",
  slots: 2,
  dice: ("4+",),
  effect: [Ciblez jusqu'à 5~engeances à portée~1. Chacune fait Recule~1.],
  flavor: [Un peu d'air, s'il vous plaît.],
)
