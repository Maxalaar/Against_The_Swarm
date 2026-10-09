#import "../../card_structure/equipment_card.typ": equipment_card

#let bandolier = equipment_card(
  "Bandoulière",
  kind: "Atout, Matériel",
  slots: 1,
  dice: (),
  effect: [Au début de votre tour, lancez 1~dé de plus. Il ne peut servir qu'à payer vos Armes de Tir.],
  flavor: [On n'a jamais trop de balles. On a trop peu de poches.],
)
