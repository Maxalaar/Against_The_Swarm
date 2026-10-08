#import "../../card_structure/creat_card.typ": creat_card

#let bombard = creat_card(
  "Bombarde",
  cost: 3,
  type: (
    "Essaim",
    "Créature",
  ),
  behavior: (
    "Si en zone 1 ou 2, Recule.",
    "Si en zone 3, Attaque.",
  ),
  flavor: "Lance à longue portée des jets corrosifs qui consument chair et acier.",
  power: 3,
  toughness: 3,
)
