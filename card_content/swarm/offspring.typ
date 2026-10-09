#import "../../card_structure/swarm_card.typ": swarm_card

#let offspring = swarm_card(
  "Rejeton",
  rank: 2,
  threat: 3,
  mutation: true,
  passive: (
    [Mutez la créature de ce secteur qui a la Menace la plus haute.],
    [Quand elle est détruite, créez un jeton qui est une copie de cette créature, sauf qu'il a 1~ATT et 1~PV.],
  ),
  flavor: [Plus petit. Tout aussi teigneux.],
)
