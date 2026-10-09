#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let swarmer = swarm_card(
  "Essaimeur",
  threat: 2,
  zones: (advance, advance, [Crée 1~jeton Essaimé dans cette zone, puis *Attaque*.]),
  zones_per_line: (2, 1),
  flavor: [Leur rôle est de répandre l'infestation au plus près de la ligne de front.],
  attack: 2,
  health: 3,
)
