#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let bombard = swarm_card(
  "Bombarde",
  threat: 3,
  zones: (attack, retreat, retreat),
  inline_zones: true,
  flavor: [Lance à longue portée des jets corrosifs qui consument chair et acier.],
  attack: 3,
  health: 3,
)
