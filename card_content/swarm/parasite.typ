#import "../../card_structure/swarm_card.typ": swarm_card

#let parasite = swarm_card(
  "Parasite",
  rank: 3,
  threat: 4,
  emprise: true,
  removal: ("4+",),
  passive: [Au début du tour des joueurs, l'As de ce secteur active une de ses cartes.],
  flavor: [Ce n'est plus tout à fait votre main.],
)
