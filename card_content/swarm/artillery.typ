#import "../../card_structure/swarm_card.typ": swarm_card

#let artillery = swarm_card(
  "Artillerie",
  rank: 3,
  threat: 5,
  structure: true,
  activation: [*Attaque* l'As de ce secteur ou d'un secteur adjacent, au choix des joueurs.],
  flavor: [Elle ne vise pas. Elle arrose.],
  attack: 3,
  health: 4,
)
