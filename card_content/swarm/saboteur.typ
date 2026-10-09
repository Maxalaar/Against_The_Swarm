#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let saboteur = swarm_card(
  "Saboteur",
  rank: 3,
  threat: 4,
  zone_lines: (
    ((3, 2), advance),
    ((1,), [*Attaque*, puis l'As de ce secteur active un de ses atouts.]),
  ),
  flavor: [Il ne vise pas la gorge. Il vise la gâchette.],
  attack: 2,
  health: 3,
)
