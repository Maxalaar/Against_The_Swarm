#import "../../card_structure/swarm_card.typ": swarm_card

#let swarmer = swarm_card(
  "Essaimeur",
  threat: 2,
  capacity: (
    "La première fois qu'il entre en zone 1, créez deux jetons Essaimé dans cette zone.",
  ),
  behavior: (
    "Si en zone 3 ou 2, Avance.",
    "Si en zone 1, Attaque.",
  ),
  flavor: "Leur rôle est de répandre l'infestation au plus près de la ligne de front.",
  attack: 2,
  health: 3,
)
