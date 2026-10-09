#import "../../card_structure/swarm_card.typ": swarm_card

#let rush = swarm_card(
  "Ruée",
  rank: 1,
  threat: 1,
  impulse: true,
  passive: [Chaque jeton de ce secteur fait *Avance~1*.],
  flavor: [Les petits courent toujours devant.],
)
