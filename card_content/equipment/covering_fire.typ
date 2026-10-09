#import "../../card_structure/equipment_card.typ": equipment_card

#let covering_fire = equipment_card(
  "Tir de couverture",
  kind: "Atout, Technique",
  charge: 1,
  dice: ("4+",),
  effect: [Ce tour, votre prochaine activation qui inflige des dégâts à portée~2 ou plus donne autant de Garde, à vous ou à un As adjacent.],
  flavor: [Avance, je te couvre.],
)
