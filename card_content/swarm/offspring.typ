#import "../../card_structure/swarm_card.typ": swarm_card

#let offspring = swarm_card(
  "Rejeton",
  rank: 2,
  threat: 2,
  mutation: true,
  passive: (
    [Mutez l'engeance de ce secteur qui a la Menace la plus haute.],
    [Quand elle est détruite, elle crée un jeton Copie de cette engeance, sauf qu'il a 1~d'Attaque et 1~d'Endurance.],
  ),
  flavor: [Plus petit. Tout aussi teigneux.],
)
