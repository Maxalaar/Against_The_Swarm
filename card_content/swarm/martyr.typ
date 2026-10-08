#import "../../card_structure/swarm_card.typ": swarm_card

#let martyr = swarm_card(
  "Martyre",
  threat: 2,
  capacity: (
    "S'il meurt en zone 1, inflige son Attaque en dégâts au joueur du secteur.",
  ),
  behavior: (
    "Si en zone 3 ou 2, Avance.",
    "Si en zone 1, Attaque.",
  ),
  flavor: "Qu’importe qu’un corps tombe, tant que l’essaim avance.",
  attack: 2,
  health: 2,
)
