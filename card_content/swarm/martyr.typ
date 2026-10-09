#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let martyr = swarm_card(
  "Martyre",
  rank: 1,
  threat: 2,
  zones: (advance, advance, attack),
  passive: [Quand il est détruit en zone~1, il inflige 2~dégâts à l'As de ce secteur.],
  flavor: [Le tuer de près, c'est lui rendre service.],
  attack: 2,
  endurance: 2,
)
