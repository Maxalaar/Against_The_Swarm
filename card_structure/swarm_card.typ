#import "creat_card.typ": creat_card

// Carte de l'Essaim. `threat` est la Menace ; les jetons n'en ont pas.
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
