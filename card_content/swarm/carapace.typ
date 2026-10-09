#import "../../card_structure/swarm_card.typ": swarm_card

#let carapace = swarm_card(
  "Carapace",
  rank: 1,
  threat: 2,
  mutation: true,
  passive: (
    [Mutez la créature de ce secteur qui a le plus de PV.],
    [Elle gagne *Blindage~1*.],
  ),
  flavor: [Ce qui ne la tue pas l'épaissit.],
)
