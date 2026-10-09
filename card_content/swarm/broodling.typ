#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let broodling = swarm_card(
  "Essaimé",
  token: true,
  zones: (advance, advance, attack),
  flavor: [Un seul ne fait pas peur. Il n'y en a jamais un seul.],
  attack: 1,
  endurance: 1,
)
