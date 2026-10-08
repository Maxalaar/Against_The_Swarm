#import "../../card_structure/creat_card.typ": creat_card

#let broodling = creat_card(
  "Essaimé",
  type: (
    "Essaim",
    "Créature",
    "Jeton",
  ),
  behavior: (
    "Si en zone 3 ou 2, Avance.",
    "Si en zone 1, Attaque.",
  ),
  flavor: "Générés en masse, ils forment la chair sacrifiable de toute force d’invasion.",
  power: 1,
  toughness: 1,
)
