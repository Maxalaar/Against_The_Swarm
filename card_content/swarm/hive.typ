#import "../../card_structure/swarm_card.typ": swarm_card

#let hive = swarm_card(
  "Ruche",
  rank: 4,
  threat: 6,
  structure: true,
  activation: [Crée 1~jeton Guerrier dans cette zone.],
  flavor: [On ne repousse pas une ruche. On la rase.],
  attack: 0,
  health: 6,
)
