#import "../../card_structure/equipment_card.typ": equipment_card

#let heavy_hand = equipment_card(
  "Main lourde",
  kind: "Atout, Technique",
  slots: 1,
  dice: (),
  effect: [Chacun de vos 6 peut payer comme deux dés de valeur 6.],
  flavor: [Quand ça passe, ça passe en force.],
)
