#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let hydra = swarm_card(
  "Hydre",
  threat: 3,
  zones: (advance, advance, attack),
  passive: [Quand elle est détruite, créez 2~jetons Essaimé dans sa zone.],
  flavor: [Coupez-la en deux, vous en aurez deux.],
  attack: 2,
  health: 3,
)
