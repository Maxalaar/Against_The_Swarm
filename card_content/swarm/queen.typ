#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let queen = swarm_card(
  "Reine",
  rank: 4,
  threat: 7,
  zone_lines: (
    ((3,), [Chaque autre engeance de ce secteur s'active.]),
    ((2, 1), retreat),
  ),
  passive: [*Patience~2.*],
  flavor: [Tant qu'elle pense, ils obéissent.],
  attack: 2,
  health: 6,
)
