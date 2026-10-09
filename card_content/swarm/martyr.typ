#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let martyr = swarm_card(
  "Martyre",
  threat: 2,
  zones: (advance, advance, attack),
  inline_zones: true,
  passive: [Quand il meurt en zone~1, il inflige 2~dégâts au joueur du secteur.],
  flavor: [Qu’importe qu’un corps tombe, tant que l’essaim avance.],
  attack: 2,
  health: 2,
)
