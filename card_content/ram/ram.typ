#import "../../card_structure/creat_card.typ": creat_card

#let ram = creat_card(
  "Bélier",
  cost: 2,
  type: (
    "Essaim",
    "Créature",
  ),
  capacity: (
    "La première fois qu'il entre en zone 1, inflige son Attaque en dégâts au joueur du secteur.",
  ),
  behavior: (
    "Si en zone 3 ou 2, Avance.",
    "Si en zone 1, Attaque.",
  ),
  power: 2,
  toughness: 3,
)
