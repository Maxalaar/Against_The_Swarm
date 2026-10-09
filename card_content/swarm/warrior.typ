#import "../../card_structure/swarm_card.typ": swarm_card, advance, retreat, attack

#let warrior = swarm_card(
  "Guerrier",
  token: true,
  zones: (advance, advance, attack),
  flavor: [Les guerriers forment l'armature solide d'une force de l'essaim.],
  attack: 3,
  health: 3,
)
