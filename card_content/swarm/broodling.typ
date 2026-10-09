#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let broodling = swarm_card(
  "Essaimé",
  token: true,
  zones: (advance, advance, attack),
  flavor: [Générés en masse, ils forment la chair sacrifiable de toute force d’invasion.],
  attack: 1,
  health: 1,
)
