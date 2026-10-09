#import "../../card_structure/equipment_card.typ": equipment_card

#let frag_mine = equipment_card(
  "Mine à fragmentation",
  kind: "Atout, Arme, Explosif",
  slots: 2,
  dice: ("4+",),
  effect: [Armer 1, jusqu'à un maximum de 4~marqueurs.

    Pendant votre tour, vous pouvez retirer 1~marqueur pour infliger 1~dégât à 3~engeances maximum à portée~1.],
  uses: 2,
  flavor: [Elle ne choisit pas.],
)
