#import "../../card_structure/equipment_card.typ": equipment_card

#let armor = equipment_card(
  "Armure",
  kind: "Atout, Matériel",
  slots: 2,
  dice: (),
  effect: [Au début de votre tour, Garde 1.],
  flavor: [Cabossée, rayée, toujours là.],
)
