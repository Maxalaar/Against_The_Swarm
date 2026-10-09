#import "../../card_structure/swarm_card.typ": swarm_card

#let egg_sac = swarm_card(
  "Poche à œufs",
  rank: 2,
  threat: 3,
  mutation: true,
  passive: (
    [Mutez la créature de ce secteur qui a le plus de PV.],
    [Quand elle est détruite, créez 2~jetons Essaimé dans sa zone.],
  ),
  flavor: [Ne tirez pas dans le ventre.],
)
