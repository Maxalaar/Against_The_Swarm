#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let ironclad = swarm_card(
  "Cuirassé",
  rank: 2,
  threat: 4,
  zones: (advance, advance, attack),
  passive: [*Blindage~1.*],
  flavor: [Les balles ricochent. Il faut frapper plus fort.],
  attack: 2,
  endurance: 3,
)
