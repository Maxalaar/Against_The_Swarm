#import "../../card_structure/swarm_card.typ": swarm_card

#let carapace = swarm_card(
  "Carapace",
  rank: 2,
  threat: 2,
  mutation: true,
  passive: (
    [Mutez l'engeance de ce secteur qui a l'Endurance la plus haute.],
    [Elle gagne *Blindage~1*.],
  ),
  flavor: [Ce qui ne la tue pas l'épaissit.],
)
