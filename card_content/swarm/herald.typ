#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let herald = swarm_card(
  "Héraut",
  rank: 2,
  threat: 3,
  zone_lines: (
    ((3,), [Choisissez 2~autres engeances non‑jeton de ce secteur. Elles s'activent.]),
    ((2, 1), retreat),
  ),
  passive: [*Patience~1.*],
  flavor: [Il reste derrière. C'est lui qui donne le rythme.],
  attack: 1,
  health: 3,
)
