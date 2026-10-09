#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let mimic = swarm_card(
  "Mimique",
  rank: 2,
  threat: 3,
  zones: (advance, advance, attack),
  passive: [Entre en jeu comme une copie de l'engeance de ce secteur qui a la Menace la plus haute, sauf qu'elle a 2~d'Attaque et 2~d'Endurance.],
  flavor: [Regardez bien. L'une des deux respire trop vite.],
  attack: 2,
  endurance: 2,
)
