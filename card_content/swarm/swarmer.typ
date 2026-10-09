#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let swarmer = swarm_card(
  "Essaimeur",
  threat: 2,
  zones: (advance, advance, attack),
  inline_zones: true,
  passive: [Quand il entre en zone~1 pour la première fois, créez 2~jetons Essaimé dans cette zone.],
  flavor: [Leur rôle est de répandre l'infestation au plus près de la ligne de front.],
  attack: 2,
  health: 3,
)
