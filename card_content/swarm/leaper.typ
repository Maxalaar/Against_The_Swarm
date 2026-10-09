#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let leaper = swarm_card(
  "Bondisseur",
  threat: 2,
  zones: ([*Avance* de 2~zones.], advance, attack),
  zones_per_line: (1, 2),
  flavor: [On l'entend bondir. On ne le voit jamais atterrir.],
  attack: 2,
  health: 2,
)
