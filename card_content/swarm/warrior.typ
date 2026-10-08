#import "../../card_structure/swarm_card.typ": swarm_card

#let warrior = swarm_card(
  "Guerrier",
  token: true,
  behavior: (
    "Si en zone 3 ou 2, Avance.",
    "Si en zone 1, Attaque.",
  ),
  flavor: "Les guerriers forment l'armature solide d'une force de l'essaim.",
  attack: 3,
  health: 3,
)
