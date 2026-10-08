#import "../../card_structure/swarm_card.typ": swarm_card

#let protector = swarm_card(
  "Protecteur",
  threat: 3,
  capacity: (
    "Chaque activation qui touche une autre créature de sa zone lui inflige 1 dégât de moins.",
  ),
  behavior: (
    "Si en zone 3 ou 2, Avance.",
    "Si en zone 1, Attaque.",
  ),
  flavor: "Cet organisme projette un bouclier psychique, émanation de la volonté de l’esprit-ruche.",
  attack: 1,
  health: 3,
)
