#import "../../card_structure/creat_card.typ": creat_card

#let spitter = creat_card(
  "Cracheur",
  type: (
    "Essaim",
    "Créature",
    "Jeton",
  ),
  behavior: (
    "Si en zone 3, Avance.",
    "Si en zone 2, Attaque.",
    "Si en zone 1, Recule.",
  ),
  flavor: "Possède un jet corrosif à courte portée lui permettant de harceler les positions ennemies.",
  power: 1,
  toughness: 1,
)
