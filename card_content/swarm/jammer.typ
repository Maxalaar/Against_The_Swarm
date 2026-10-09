#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let jammer = swarm_card(
  "Brouilleur",
  rank: 1,
  threat: 3,
  zones: (advance, advance, attack),
  passive: [Tant qu'il est en zone~1, l'As de ce secteur a −1~PA (minimum 1~PA).],
  flavor: [Son cri vrille les nerfs et brouille les réflexes.],
  attack: 1,
  health: 3,
)
