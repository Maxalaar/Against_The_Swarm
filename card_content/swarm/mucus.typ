#import "../../card_structure/swarm_card.typ": swarm_card

#let mucus = swarm_card(
  "Mucus",
  rank: 2,
  threat: 2,
  emprise: true,
  removal: ("X", "X"),
  passive: [Les As ne peuvent pas déplacer les créatures de ce secteur.],
  flavor: [Tout colle. Rien ne bouge.],
)
