#import "../../card_structure/swarm_card.typ": swarm_card

#let pack_instinct = swarm_card(
  "Instinct de meute",
  rank: 2,
  threat: 3,
  mutation: true,
  passive: (
    [Mutez l'engeance de ce secteur qui a l'ATT la plus haute.],
    [Elle gagne +1~ATT pour chaque autre engeance de sa zone.],
  ),
  flavor: [Seule, elle hésite. À dix, jamais.],
)
