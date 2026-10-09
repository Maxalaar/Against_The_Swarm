#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let swarmer = swarm_card(
  "Essaimeur",
  rank: 2,
  threat: 3,
  zones: (advance, advance, [Crée 1~jeton Essaimé dans cette zone, puis *Attaque*.]),
  flavor: [Là où il s'arrête, ça commence à grouiller.],
  attack: 2,
  endurance: 3,
)
