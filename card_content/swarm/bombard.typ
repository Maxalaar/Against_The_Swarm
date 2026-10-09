#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let bombard = swarm_card(
  "Bombarde",
  rank: 1,
  threat: 3,
  zones: (attack, retreat, retreat),
  flavor: [Elle ne s'approche jamais. Elle n'en a pas besoin.],
  attack: 2,
  endurance: 2,
)
