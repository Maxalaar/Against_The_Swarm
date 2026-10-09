#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let carrier = swarm_card(
  "Porteur",
  rank: 2,
  threat: 4,
  zones: (advance, advance, attack),
  passive: [Quand il est détruit, il crée 2~jetons Bubon dans sa zone.],
  flavor: [Ce qu'il transporte est pire que lui.],
  attack: 1,
  endurance: 3,
)
