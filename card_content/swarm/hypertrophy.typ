#import "../../card_structure/swarm_card.typ": swarm_card

#let hypertrophy = swarm_card(
  "Hypertrophie",
  rank: 1,
  threat: 2,
  mutation: true,
  passive: (
    [Mutez la créature de ce secteur qui a le moins de PV.],
    [Elle gagne +3~PV.],
  ),
  flavor: [Hier c'était la plus chétive.],
)
