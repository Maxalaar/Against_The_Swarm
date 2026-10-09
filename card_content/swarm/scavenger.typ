#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let scavenger = swarm_card(
  "Charognard",
  rank: 2,
  threat: 3,
  zones: (advance, advance, attack),
  passive: [Quand une autre engeance de ce secteur est détruite, il fait *Avance~1*, ou *Attaque* s'il est en zone~1.],
  flavor: [Chaque cadavre le rapproche.],
  attack: 2,
  endurance: 3,
)
