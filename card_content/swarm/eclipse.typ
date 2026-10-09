#import "../../card_structure/swarm_card.typ": swarm_card

#let eclipse = swarm_card(
  "Éclipse",
  rank: 4,
  threat: 5,
  emprise: true,
  removal: 15,
  passive: [Le niveau de menace de ce secteur augmente de 2.],
  flavor: [Quand le ciel se couvre d'ailes.],
)
