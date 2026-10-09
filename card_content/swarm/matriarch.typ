#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let matriarch = swarm_card(
  "Matriarche",
  rank: 3,
  threat: 5,
  zones: ([Crée 1~jeton Guerrier dans cette zone.], retreat, attack),
  zones_per_line: (1, 2),
  flavor: [Chaque minute qu'on lui laisse est une armée de plus.],
  attack: 2,
  health: 5,
)
