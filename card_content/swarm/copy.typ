#import "../../card_structure/swarm_card.typ": swarm_card

#let copy = swarm_card(
  "Copie",
  token: true,
  passive: [Ce jeton est une copie de la créature désignée par l'effet qui l'a créé, sauf qu'il a 1~ATT et 1~PV.],
  flavor: [La même chose, en plus petit et en plus nombreux.],
  attack: 1,
  health: 1,
)
