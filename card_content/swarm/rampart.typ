#import "../../card_structure/swarm_card.typ": swarm_card

#let rampart = swarm_card(
  "Rempart",
  rank: 3,
  threat: 4,
  structure: true,
  passive: [Les autres engeances de sa zone ont *Blindage~1*.],
  flavor: [Derrière lui, l'essaim prend son temps.],
  attack: 0,
  health: 4,
)
