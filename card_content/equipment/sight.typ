#import "../../card_structure/equipment_card.typ": equipment_card

#let sight = equipment_card(
  "Viseur",
  kind: "Atout, Module",
  slots: 1,
  dice: (),
  effect: [Les coûts « N+ » de l'atout modifié sont réduits de 1.],
  flavor: [Le point rouge ne ment jamais.],
)
