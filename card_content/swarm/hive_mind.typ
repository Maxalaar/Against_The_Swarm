#import "../../card_structure/swarm_card.typ": swarm_card

#let hive_mind = swarm_card(
  "Esprit-ruche",
  rank: 2,
  threat: 3,
  emprise: true,
  removal: ("6", "6"),
  passive: [L'As de ce secteur a −1~PA.],
  flavor: [Une voix de trop dans la tête.],
)
