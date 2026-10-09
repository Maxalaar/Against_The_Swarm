#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let ram = swarm_card(
  "Bélier",
  rank: 1,
  threat: 2,
  zones: (advance, advance, attack),
  passive: [Quand il entre en zone~1 pour la première fois, il inflige 2~dégâts à l'As de ce secteur.],
  flavor: [Il ne freine pas. Il n'a jamais appris.],
  attack: 2,
  endurance: 3,
)
