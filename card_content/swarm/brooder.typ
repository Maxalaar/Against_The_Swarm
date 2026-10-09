#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let brooder = swarm_card(
  "Couveuse",
  rank: 2,
  threat: 4,
  zones: ([Crée 1~jeton Cracheur dans cette zone.], retreat, retreat),
  flavor: [Elle ne se bat pas. Elle fabrique ceux qui se battent.],
  attack: 0,
  endurance: 3,
)
