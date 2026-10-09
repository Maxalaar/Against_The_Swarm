#import "../../card_structure/swarm_card.typ": swarm_card

#let hunger = swarm_card(
  "Faim",
  rank: 2,
  threat: 3,
  emprise: true,
  removal: 12,
  passive: [Chaque fois qu'une engeance non‑jeton est détruite dans ce secteur, créez 1~jeton Essaimé en zone~3 de ce secteur.],
  flavor: [Rien ne se perd. Tout se mange.],
)
