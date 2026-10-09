#import "../../card_structure/swarm_card.typ": swarm_card

#let frenzy = swarm_card(
  "Frénésie",
  rank: 3,
  threat: 4,
  mutation: true,
  passive: (
    [Mutez l'engeance de ce secteur qui a l'ATT la plus haute.],
    [Quand elle s'active, elle s'active une seconde fois.],
  ),
  flavor: [Elle ne s'arrête plus.],
)
