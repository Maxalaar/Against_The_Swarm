#import "../../card_structure/equipment_card.typ": equipment_card

#let double_trigger = equipment_card(
  "Double détente",
  kind: "Atout, Module",
  slots: 2,
  dice: (),
  effect: [L'atout modifié applique son effet deux fois, sur les mêmes cibles.],
  flavor: [Pourquoi s'arrêter à une ?],
)
