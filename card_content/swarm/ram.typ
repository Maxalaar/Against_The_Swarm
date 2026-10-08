#import "../../card_structure/swarm_card.typ": swarm_card

#let ram = swarm_card(
  "Bélier",
  threat: 2,
  capacity: (
    "La première fois qu'il entre en zone 1, inflige son Attaque en dégâts au joueur du secteur.",
  ),
  behavior: (
    "Si en zone 3 ou 2, Avance.",
    "Si en zone 1, Attaque.",
  ),
  attack: 2,
  health: 3,
)
