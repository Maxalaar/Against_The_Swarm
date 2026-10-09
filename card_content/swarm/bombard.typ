#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let bombard = swarm_card(
  "Bombarde",
  rank: 1,
  threat: 3,
  zones: (attack, retreat, retreat),
  flavor: [Lance à longue portée des jets corrosifs qui consument chair et acier.],
  attack: 3,
  health: 3,
)
