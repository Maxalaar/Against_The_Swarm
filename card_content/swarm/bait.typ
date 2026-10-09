#import "../../card_structure/swarm_card.typ": swarm_card

#let bait = swarm_card(
  "Appât",
  rank: 2,
  threat: 3,
  structure: true,
  passive: (
    [Entre en jeu en zone~2.],
    [Chaque tour, la première activation de chaque As qui peut cibler l'Appât doit le cibler.],
  ),
  flavor: [Impossible de regarder ailleurs.],
  attack: 0,
  endurance: 3,
)
