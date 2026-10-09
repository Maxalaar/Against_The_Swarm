#import "../../card_structure/swarm_card.typ": swarm_card

#let toxin = swarm_card(
  "Toxine",
  rank: 1,
  threat: 2,
  emprise: true,
  removal: ("4+", "4+"),
  passive: [Au début du tour des joueurs, infligez 1~dégât à l'As de ce secteur.],
  flavor: [On ne la voit pas. On la tousse.],
)
