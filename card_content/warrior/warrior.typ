#import "../../card_structure/creat_card.typ": creat_card

#let warrior = creat_card(
  "Guerrier",
  type: (
    "Essaim",
    "Créature",
    "Jeton",
  ),
  behavior: (
    "Si en zone 3 ou 2, Avance.",
    "Si en zone 1, Attaque.",
  ),
  flavor: "Les guerriers forment l'armature solide d'une force de l'essaim.",
  power: 3,
  toughness: 3,
)
