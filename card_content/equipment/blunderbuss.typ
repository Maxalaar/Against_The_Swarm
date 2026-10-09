#import "../../card_structure/equipment_card.typ": equipment_card

#let blunderbuss = equipment_card(
  "Pétoire",
  kind: "Atout, Arme, Mêlée",
  slots: 1,
  dice: ("X",),
  effect: [Infligez X~dégâts à portée~1.],
  flavor: [Personne ne sait ce qu'il y a dedans. Pas même elle.],
)
