#import "../../card_structure/swarm_card.typ": swarm_card

#let isolation = swarm_card(
  "Isolement",
  rank: 2,
  threat: 3,
  emprise: true,
  removal: ("5+",),
  passive: [L'As de ce secteur ne peut cibler que des engeances de son secteur.],
  flavor: [Vous les entendez crier. Vous ne pouvez rien faire.],
)
