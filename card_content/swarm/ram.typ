#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let ram = swarm_card(
  "Bélier",
  threat: 2,
  zones: (advance, advance, attack),
  inline_zones: true,
  passive: [Quand il entre en zone~1 pour la première fois, il inflige 2~dégâts au joueur du secteur.],
  attack: 2,
  health: 3,
)
