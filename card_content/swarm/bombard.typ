#import "../../card_structure/swarm_card.typ": swarm_card

#let bombard = swarm_card(
  "Bombarde",
  threat: 3,
  behavior: (
    "Si en zone 1 ou 2, Recule.",
    "Si en zone 3, Attaque.",
  ),
  flavor: "Lance à longue portée des jets corrosifs qui consument chair et acier.",
  attack: 3,
  health: 3,
)
