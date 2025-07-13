#import "../../card_structure/creat_card.typ": creat_card

#let drone_text_fr = (
  name: "Drone",
  type: (
    "Essaim",
    "Créature",
    "Jeton",
  ),
  behavior: (
    "Si en zone 3 ou 2 Avance.",
    "Si en zone 1 Attaque."
  ),
  flavor: "Générés en masse, ils forment la chair sacrifiable de toute force d’invasion.",
)

#let drone_text_en = (
  name: "Drone",
  type: (
    "Swarm",
    "Creature",
    "Token"
  ),
  behavior: (
    "If in zone 3 or 2, Advance.",
    "If in zone 1, Attack."
  ),
  flavor: "Mass-produced, they form the expendable bulk of any invasion force.",
)

#let make_drone(
  language: "en",
) = {
  let drone_text = none
  if language == "en" {
    drone_text = drone_text_en
  } else if language == "fr" {
    drone_text = drone_text_fr
  } else {
    drone_text = drone_text_en
  }
  
  let drone = creat_card(
    drone_text.name,
    type: drone_text.type,
    behavior: drone_text.behavior,
    flavor: drone_text.flavor,
    power: "1",
    toughness: "1",
  )
  
  drone
}