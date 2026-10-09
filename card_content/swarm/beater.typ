#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let beater = swarm_card(
  "Rabatteur",
  rank: 1,
  threat: 2,
  zone_lines: (
    ((3, 2), [Chaque autre engeance de sa zone fait *Avance~1*.]),
    ((1,), attack),
  ),
  passive: [*Patience~1.*],
  flavor: [Il ne mord pas. Il pousse les autres à mordre.],
  attack: 1,
  health: 2,
)
