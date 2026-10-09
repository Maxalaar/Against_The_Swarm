#import "../../card_structure/equipment_card.typ": equipment_card

#let guided_missile = equipment_card(
  "Missile guidé",
  kind: "Atout, Arme, Explosif",
  slots: 2,
  dice: ("6",),
  effect: [Infligez 5~dégâts à une engeance de votre secteur ou d'un secteur adjacent, quelle que soit sa zone.],
  flavor: [Elle peut toujours courir.],
)
