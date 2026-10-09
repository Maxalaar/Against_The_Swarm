#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let pod = swarm_card(
  "Gousse",
  rank: 1,
  threat: 3,
  zones: (advance, advance, attack),
  passive: [Quand elle est détruite, créez 2~jetons Essaimé dans sa zone.],
  flavor: [Elle éclate, et ça grouille.],
  attack: 2,
  health: 3,
)
