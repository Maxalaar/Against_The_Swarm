#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let spitter = swarm_card(
  "Cracheur",
  token: true,
  zones: (advance, attack, retreat),
  flavor: [Il garde ses distances et vous arrose.],
  attack: 1,
  endurance: 1,
)
