#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let ironclad = swarm_card(
  "Cuirassé",
  threat: 4,
  zones: (advance, advance, attack),
  passive: [Les activations qui infligent 1~dégât n'ont aucun effet sur les autres créatures de sa zone.],
  flavor: [Sa carapace couvre toute la meute.],
  attack: 2,
  health: 3,
)
