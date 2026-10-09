#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let brooder = swarm_card(
  "Couveuse",
  rank: 1,
  threat: 3,
  zones: ([Crée 1~jeton Cracheur dans cette zone.], retreat, retreat),
  zones_per_line: (1, 2),
  flavor: [Elle ne se bat pas. Elle fabrique ceux qui se battent.],
  attack: 0,
  health: 3,
)
