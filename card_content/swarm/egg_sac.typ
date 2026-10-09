#import "../../card_structure/swarm_card.typ": swarm_card

#let egg_sac = swarm_card(
  "Poche à œufs",
  rank: 2,
  threat: 2,
  mutation: true,
  passive: (
    [Mutez l'engeance de ce secteur qui a l'Endurance la plus haute.],
    [Quand elle est détruite, elle crée 2~jetons Essaimé dans sa zone.],
  ),
  flavor: [Ne tirez pas dans le ventre.],
)
