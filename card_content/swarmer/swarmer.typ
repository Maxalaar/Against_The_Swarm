#import "../../card_structure/creat_card.typ": creat_card

#let swarmer = creat_card(
  "Essaimeur",
  cost: 3,
  type: (
    "Essaim",
    "Créature",
  ),
  capacity: (
    "La première fois qu'il entre en zone 1, créez deux jetons Drone dans cette zone.",
  ),
  behavior: (
    "Si en zone 3 ou 2 Avance.",
    "Si en zone 1 Attaque.",
  ),
  flavor: "Leur rôle est de répandre l'infestation au plus près de la ligne de front.",
  power: "2",
  toughness: "3",
)