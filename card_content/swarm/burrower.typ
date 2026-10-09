#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let burrower = swarm_card(
  "Fouisseur",
  rank: 1,
  threat: 2,
  zones: (advance, advance, attack),
  passive: [Entre en jeu en zone~1.],
  flavor: [Le sol tremble, puis il s'ouvre.],
  attack: 1,
  endurance: 2,
)
