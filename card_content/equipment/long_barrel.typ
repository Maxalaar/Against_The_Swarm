#import "../../card_structure/equipment_card.typ": equipment_card

#let long_barrel = equipment_card(
  "Canon long",
  kind: "Atout, Module",
  slots: 1,
  dice: (),
  effect: [L'atout modifié inflige +1~dégât.],
  flavor: [Plus long, plus loin, plus fort.],
)
