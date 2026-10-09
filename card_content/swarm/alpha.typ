#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let alpha = swarm_card(
  "Alpha",
  rank: 2,
  threat: 4,
  zones: (advance, advance, attack),
  passive: [Les autres engeances de sa zone ont +1~PV.],
  flavor: [Là où il passe, l'essaim se durcit.],
  attack: 2,
  health: 3,
)
