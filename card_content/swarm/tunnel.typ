#import "../../card_structure/swarm_card.typ": swarm_card

#let tunnel = swarm_card(
  "Tunnel",
  rank: 1,
  threat: 3,
  emprise: true,
  removal: 10,
  passive: [Quand il s'active, créez 1~jeton Essaimé en zone~2 de ce secteur.],
  flavor: [Ils ne passent plus par la porte.],
)
