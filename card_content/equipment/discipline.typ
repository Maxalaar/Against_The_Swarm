#import "../../card_structure/equipment_card.typ": equipment_card

#let discipline = equipment_card(
  "Discipline",
  kind: "Atout, Technique",
  slots: 1,
  dice: (),
  effect: [Chaque fois que vous activez une Technique, Garde 1.],
  flavor: [Mille fois le même geste.],
)
