#import "../../card_structure/swarm_card.typ": swarm_card

#let camouflage = swarm_card(
  "Camouflage",
  rank: 3,
  threat: 3,
  mutation: true,
  passive: (
    [Mutez l'engeance de ce secteur qui a la Menace la plus haute.],
    [Elle ne peut pas être ciblée depuis un autre secteur.],
  ),
  flavor: [Vos voisins jurent qu'il n'y a rien.],
)
