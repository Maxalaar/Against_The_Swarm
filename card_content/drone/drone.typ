#import "../../card_structure/creat_card.typ": creat_card

#let drone = creat_card(
  "Drone",
  type: ("Essaim", "Créature", "Jeton"),
  behavior: (
    "Si en zone 3 ou 2 Avance.",
    "Si en zone 1 Attaque.",
  ),
  flavor: "Générés en masse par l'Essaim, ils forment la masse sacrifiable de toute force d'invasion.",
  power: "1",
  toughness: "1",
)
