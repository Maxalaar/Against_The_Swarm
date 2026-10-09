#import "../../card_structure/swarm_card.typ": swarm_card

#let bait = swarm_card(
  "Appât",
  rank: 2,
  threat: 3,
  structure: true,
  passive: [Entre en jeu en zone~2. Chaque tour, la première activation qui cible une créature de sa zone doit cibler l'Appât.],
  flavor: [Impossible de regarder ailleurs.],
  attack: 0,
  health: 3,
)
