#import "../../card_structure/equipment_card.typ": equipment_card

#let double_trigger = equipment_card(
  "Double détente",
  kind: "Atout, Module",
  slots: 2,
  dice: (),
  effect: [Chaque fois que vous activez l'atout modifié, vous pouvez l'activer une seconde fois sans payer.],
  flavor: [Pourquoi s'arrêter à une ?],
)
