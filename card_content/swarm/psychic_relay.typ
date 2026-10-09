#import "../../card_structure/swarm_card.typ": swarm_card

#let psychic_relay = swarm_card(
  "Relais psychique",
  rank: 2,
  threat: 3,
  structure: true,
  passive: [Le niveau de menace de ce secteur augmente de 1.],
  flavor: [Il appelle. Et l'essaim répond.],
  attack: 0,
  health: 3,
)
