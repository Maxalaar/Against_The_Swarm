#import "../../card_structure/equipment_card.typ": equipment_card

#let bandolier = equipment_card(
  "Bandoulière",
  kind: "Atout, Matériel",
  slots: 1,
  dice: (),
  effect: [Vos Armes de Tir ont 1~utilisation de plus.],
  flavor: [On n'a jamais trop de balles. On a trop peu de poches.],
)
