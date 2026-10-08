#import "../../card_structure/swarm_card.typ": swarm_card

#let broodling = swarm_card(
  "Essaimé",
  token: true,
  behavior: (
    "Si en zone 3 ou 2, Avance.",
    "Si en zone 1, Attaque.",
  ),
  flavor: "Générés en masse, ils forment la chair sacrifiable de toute force d’invasion.",
  attack: 1,
  health: 1,
)
