#import "../../card_structure/swarm_card.typ": swarm_card

#let fog = swarm_card(
  "Brouillard",
  rank: 2,
  threat: 3,
  emprise: true,
  removal: ("5+", "5+"),
  passive: [La portée des atouts de l'As de ce secteur est réduite de 1.],
  flavor: [On tire sur des ombres.],
)
