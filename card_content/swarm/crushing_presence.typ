#import "../../card_structure/swarm_card.typ": swarm_card

#let crushing_presence = swarm_card(
  "Présence écrasante",
  rank: 2,
  threat: 3,
  emprise: true,
  removal: ("6", "6"),
  passive: [L'As de ce secteur a −1~PA.],
  flavor: [Une voix de trop dans la tête.],
)
