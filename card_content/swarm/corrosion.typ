#import "../../card_structure/swarm_card.typ": swarm_card

#let corrosion = swarm_card(
  "Corrosion",
  rank: 3,
  threat: 4,
  emprise: true,
  removal: ("X", "X", "X"),
  passive: [Les atouts de l'As de ce secteur ont 1~utilisation de moins.],
  flavor: [Le métal pleure.],
)
