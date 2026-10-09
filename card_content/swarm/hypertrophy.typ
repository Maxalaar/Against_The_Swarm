#import "../../card_structure/swarm_card.typ": swarm_card

#let hypertrophy = swarm_card(
  "Hypertrophie",
  rank: 1,
  threat: 2,
  mutation: true,
  passive: (
    [Mutez l'engeance de ce secteur qui a l'Endurance la plus basse.],
    [Elle gagne +2~Endurance.],
  ),
  flavor: [Hier c'était la plus chétive.],
)
