#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let saboteur = swarm_card(
  "Saboteur",
  rank: 3,
  threat: 4,
  zones: (advance, advance, [*Attaque*, puis l'As de ce secteur active un de ses atouts.]),
  flavor: [Il ne vise pas la gorge. Il vise la gâchette.],
  attack: 2,
  endurance: 3,
)
