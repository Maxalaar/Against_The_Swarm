#import "../../card_structure/equipment_card.typ": equipment_card

#let glue_trap = equipment_card(
  "Piège à glu",
  kind: "Atout, Arme, Explosif",
  slots: 1,
  dice: ("",),
  effect: [Armer 1, jusqu'à un maximum de 4~marqueurs.

    Pendant votre tour, vous pouvez retirer X~marqueurs pour Paralyser X à portée~1.],
  uses: 2,
  flavor: [Plus elle tire, plus ça colle.],
)
