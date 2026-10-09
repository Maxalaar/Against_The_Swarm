#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let carrier = swarm_card(
  "Porteur",
  rank: 1,
  threat: 3,
  zones: (advance, advance, attack),
  passive: [Quand il est détruit, créez 2~jetons Bubon dans sa zone.],
  flavor: [Ce qu'il transporte est pire que lui.],
  attack: 1,
  health: 3,
)
