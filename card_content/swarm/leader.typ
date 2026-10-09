#import "../../card_structure/swarm_card.typ": swarm_card

#let leader = swarm_card(
  "Meneuse",
  rank: 3,
  threat: 4,
  mutation: true,
  passive: (
    [Mutez l'engeance de ce secteur qui a la Menace la plus haute.],
    [Elle gagne *Patience~1*. Quand elle s'active, une autre engeance de sa zone s'active.],
  ),
  flavor: [Elle a appris à attendre son moment.],
)
