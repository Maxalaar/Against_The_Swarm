#import "../../card_structure/creat_card.typ": creat_card

#let martyr = creat_card(
  "Martyre",
  cost: 2,
  type: (
    "Essaim",
    "Créature",
  ),
  capacity: (
    "S'il meurt en zone 1, inflige son Attaque en dégâts au joueur du secteur.",
  ),
  behavior: (
    "Si en zone 3 ou 2, Avance.",
    "Si en zone 1, Attaque.",
  ),
  flavor: "Qu’importe qu’un corps tombe, tant que l’essaim avance.",
  power: 2,
  toughness: 2,
)
