#import "../../card_structure/swarm_card.typ": swarm_card

#let spitter = swarm_card(
  "Cracheur",
  token: true,
  behavior: (
    "Si en zone 3, Avance.",
    "Si en zone 2, Attaque.",
    "Si en zone 1, Recule.",
  ),
  flavor: "Possède un jet corrosif à courte portée lui permettant de harceler les positions ennemies.",
  attack: 1,
  health: 1,
)
