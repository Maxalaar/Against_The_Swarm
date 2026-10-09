#import "creat_card.typ": creat_card

// Swarm card. `threat` is the Menace value; tokens have none.
#let swarm_card(
  name,
  threat: none,
  token: false,
  capacity: none,
  behavior: none,
  flavor: none,
  attack: none,
  health: none,
) = creat_card(
  name,
  cost: threat,
  cost_label: "Menace",
  type: if token { ("Essaim", "Créature", "Jeton") } else { ("Essaim", "Créature") },
  capacity: capacity,
  behavior: behavior,
  flavor: flavor,
  power: attack,
  toughness: health,
)
