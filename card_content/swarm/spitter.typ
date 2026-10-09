#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let spitter = swarm_card(
  "Cracheur",
  token: true,
  zones: (advance, attack, retreat),
  flavor: [Possède un jet corrosif à courte portée lui permettant de harceler les positions ennemies.],
  attack: 1,
  health: 1,
)
