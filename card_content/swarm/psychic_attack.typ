#import "../../card_structure/swarm_card.typ": swarm_card

#let psychic_attack = swarm_card(
  "Attaque psychique",
  rank: 2,
  threat: 2,
  impulse: true,
  passive: [Infligez 2~dégâts à l'As de ce secteur.],
  flavor: [Ça ne vient pas de dehors. Ça vient de dedans.],
)
