#import "../../card_structure/equipment_card.typ": equipment_card

#let second_wind = equipment_card(
  "Second souffle",
  kind: "Atout, Technique",
  charge: 1,
  dice: ("6",),
  effect: [Lancez 2~dés de plus et ajoutez-les à votre réserve.],
  flavor: [Ce n'est jamais fini tant qu'il reste un dé.],
)
