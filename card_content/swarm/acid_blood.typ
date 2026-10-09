#import "../../card_structure/swarm_card.typ": swarm_card

#let acid_blood = swarm_card(
  "Sang acide",
  rank: 2,
  threat: 3,
  mutation: true,
  passive: (
    [Mutez l'engeance de ce secteur la plus proche de l'As.],
    [Quand elle est détruite en zone~1, infligez 2~dégâts à l'As de ce secteur.],
  ),
  flavor: [Même morte, elle mord.],
)
