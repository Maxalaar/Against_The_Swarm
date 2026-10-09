#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let burrower = swarm_card(
  "Fouisseur",
  threat: 2,
  zones: (advance, advance, attack),
  passive: [Entre en jeu en zone~2.],
  flavor: [Le sol tremble, puis il s'ouvre.],
  attack: 2,
  health: 2,
)
