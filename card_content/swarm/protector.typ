#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let protector = swarm_card(
  "Protecteur",
  rank: 1,
  threat: 3,
  zones: (advance, advance, attack),
  passive: [Les autres engeances de sa zone ont *Blindage~1*.],
  flavor: [Cet organisme projette un bouclier psychique, émanation de la volonté de l’esprit-ruche.],
  attack: 1,
  health: 3,
)
