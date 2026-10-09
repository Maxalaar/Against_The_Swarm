#import "../../card_structure/equipment_card.typ": equipment_card

#let scope = equipment_card(
  "Lunette",
  kind: "Atout, Module",
  slots: 1,
  dice: (),
  effect: [L'atout modifié a +1 de portée.],
  flavor: [Ils sont plus laids de près.],
)
