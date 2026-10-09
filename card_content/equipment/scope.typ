#import "../../card_structure/equipment_card.typ": equipment_card

#let scope = equipment_card(
  "Lunette",
  kind: "Atout, Matériel",
  slots: 1,
  dice: (),
  effect: [Vos Armes ont +1 de portée.],
  flavor: [Ils sont plus laids de près.],
)
