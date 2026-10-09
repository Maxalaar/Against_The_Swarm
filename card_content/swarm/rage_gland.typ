#import "../../card_structure/swarm_card.typ": swarm_card

#let rage_gland = swarm_card(
  "Glande de rage",
  rank: 3,
  threat: 4,
  structure: true,
  passive: [Entre en jeu en zone~2. Les créatures en zone~1 de ce secteur ont +1~ATT.],
  flavor: [Son odeur les rend fous.],
  attack: 0,
  health: 4,
)
