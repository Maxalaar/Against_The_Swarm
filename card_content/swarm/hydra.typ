#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let hydra = swarm_card(
  "Hydre",
  rank: 3,
  threat: 5,
  zones: (advance, advance, attack),
  passive: [Chaque fois qu'elle subit des dégâts, elle crée 1~jeton Essaimé dans sa zone.],
  flavor: [Coupez-la en deux, vous en aurez deux.],
  attack: 3,
  endurance: 5,
)
