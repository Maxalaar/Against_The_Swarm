#import "../../card_structure/swarm_card.typ": swarm_card

#let second_skin = swarm_card(
  "Seconde peau",
  rank: 2,
  threat: 3,
  mutation: true,
  passive: (
    [Mutez l'engeance de ce secteur qui a la Menace la plus haute.],
    [La prochaine fois qu'elle devrait être détruite, détruisez cette Mutation à la place.],
  ),
  flavor: [Vous n'avez tué que l'enveloppe.],
)
