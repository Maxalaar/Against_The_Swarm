#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let protector = swarm_card(
  "Protecteur",
  rank: 2,
  threat: 4,
  zones: (advance, advance, attack),
  passive: [Les autres engeances de sa zone ont *Blindage~1*.],
  flavor: [Tirez. Il adore ça.],
  attack: 1,
  endurance: 4,
)
