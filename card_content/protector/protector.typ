#import "../../card_structure/creat_card.typ": creat_card

#let protector = creat_card(
  "Protecteur",
  cost: 3,
  type: (
    "Essaim",
    "Créature",
  ),
  capacity: (
    "Chaque activation qui touche une autre créature de sa zone lui inflige 1 dégât de moins.",
  ),
  behavior: (
    "Si en zone 3 ou 2, Avance.",
    "Si en zone 1, Attaque.",
  ),
  flavor: "Cet organisme projette un bouclier psychique, émanation de la volonté de l’esprit-ruche.",
  power: 1,
  toughness: 3,
)
