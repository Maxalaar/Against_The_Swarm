#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let bubo = swarm_card(
  "Bubon",
  token: true,
  zones: (advance, advance, [*Attaque*, puis est détruit.]),
  flavor: [Il n'a qu'une idée en tête, et elle explose.],
  attack: 3,
  endurance: 1,
)
