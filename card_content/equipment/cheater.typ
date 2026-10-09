#import "../../card_structure/equipment_card.typ": equipment_card

#let cheater = equipment_card(
  "Tricheur",
  kind: "Atout, Technique",
  slots: 1,
  dice: (),
  effect: [Une fois par tour, réglez un de vos dés sur la valeur d'un autre de vos dés.],
  flavor: [Quoi~? Ils trichent bien, eux.],
)
