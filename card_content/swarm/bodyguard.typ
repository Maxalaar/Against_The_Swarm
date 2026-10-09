#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let bodyguard = swarm_card(
  "Garde du corps",
  rank: 2,
  threat: 3,
  zones: (advance, advance, attack),
  passive: [L'autre engeance de ce secteur qui a la Menace la plus haute ne peut pas être ciblée.],
  flavor: [Il faudra lui passer dessus.],
  attack: 2,
  endurance: 3,
)
