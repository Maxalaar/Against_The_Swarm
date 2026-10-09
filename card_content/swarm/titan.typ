#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let titan = swarm_card(
  "Titan",
  rank: 4,
  threat: 6,
  zones: (advance, advance, attack),
  passive: [*Blindage~1.*],
  flavor: [Le sol le sent arriver avant vous.],
  attack: 5,
  health: 7,
)
