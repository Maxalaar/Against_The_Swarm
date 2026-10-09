#import "../../card_structure/swarm_card.typ": swarm_card

#let apex = swarm_card(
  "Apex",
  rank: 4,
  threat: 5,
  mutation: true,
  passive: (
    [Mutez l'engeance de ce secteur qui a la Menace la plus haute.],
    [Elle gagne +2~ATT, +2~PV et *Blindage~1*.],
  ),
  flavor: [L'essaim a trouvé sa forme parfaite.],
)
