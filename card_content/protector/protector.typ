#import "../../card_structure/creat_card.typ": creat_card

#let protector = creat_card(
  "Protecteur",
  cost: 3,
  type: (
    "Essaim",
    "Créature",
  ),
  capacity: (
    "Chaque fois qu'une créature dans sa zone subit des dégâts, réduire de 1 les dégâts subis.",
  ),
  behavior: (
    "Si en zone 3 ou 2, Avance.",
    "Si en zone 1, Attaque.",
  ),
  flavor: "Cet organisme projette un bouclier psychique, émanation de la volonté de l’esprit-ruche.",
  power: 1,
  toughness: 3,
)
