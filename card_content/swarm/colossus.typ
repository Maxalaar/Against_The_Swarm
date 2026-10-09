#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let colossus = swarm_card(
  "Colosse",
  rank: 2,
  threat: 4,
  zones: (advance, advance, attack),
  flavor: [Une arme ne suffit pas. Deux non plus.],
  attack: 4,
  health: 5,
)
