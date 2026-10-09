#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let herald = swarm_card(
  "Héraut",
  rank: 3,
  threat: 4,
  zones: ([Choisissez 2~autres engeances non‑jeton de ce secteur. Elles s'activent.], retreat, retreat),
  passive: [*Patience~1.*],
  flavor: [Il reste derrière. C'est lui qui donne le rythme.],
  attack: 1,
  endurance: 3,
)
