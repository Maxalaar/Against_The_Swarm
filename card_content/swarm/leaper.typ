#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let leaper = swarm_card(
  "Bondisseur",
  rank: 1,
  threat: 2,
  zones: ([*Avance~2.*], advance, attack),
  flavor: [On l'entend bondir. On ne le voit jamais atterrir.],
  attack: 2,
  endurance: 2,
)
