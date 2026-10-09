#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let protector = swarm_card(
  "Protecteur",
  threat: 3,
  zones: (advance, advance, attack),
  inline_zones: true,
  passive: [Chaque activation inflige 1~dégât de moins aux autres créatures de sa zone.],
  flavor: [Cet organisme projette un bouclier psychique, émanation de la volonté de l’esprit-ruche.],
  attack: 1,
  health: 3,
)
