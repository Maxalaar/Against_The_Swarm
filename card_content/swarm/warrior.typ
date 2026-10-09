#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let warrior = swarm_card(
  "Guerrier",
  token: true,
  zones: (advance, advance, attack),
  flavor: [L'essaim en fait des milliers. Un seul suffit à vous tuer.],
  attack: 3,
  endurance: 3,
)
