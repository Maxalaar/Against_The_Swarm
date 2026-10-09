#import "../../card_structure/swarm_card.typ": swarm_card

#let claws = swarm_card(
  "Griffes",
  rank: 1,
  threat: 2,
  mutation: true,
  passive: (
    [Mutez la créature de ce secteur la plus proche de l'As.],
    [Elle gagne +1~ATT.],
  ),
  flavor: [Elles ont poussé pendant la nuit.],
)
