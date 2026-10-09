#import "../../card_structure/swarm_card.typ": swarm_card

#let infested_ground = swarm_card(
  "Terrain infesté",
  rank: 3,
  threat: 4,
  emprise: true,
  removal: ("X", "X", "X"),
  passive: [Les créatures qui entrent en jeu dans ce secteur arrivent en zone~2.],
  flavor: [Ils sortent déjà du sol sous vos pieds.],
)
