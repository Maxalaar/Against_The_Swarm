#import "../../card_structure/creat_card.typ": creat_card

#let swarmer_text_fr = (
  name: "Essaimeur",
  cost: 3,
  type: (
    "Essaim",
    "Créature",
  ),
  capacity: (
    "La première fois qu'il entre en zone 1, créez deux jetons Drone dans cette zone.",
  ),
  behavior: (
    "Si en zone 3 ou 2 Avance.",
    "Si en zone 1 Attaque.",
  ),
  flavor: "Leur rôle est de répandre l'infestation au plus près de la ligne de front.",
  power: "2",
  toughness: "3",
)

#let swarmer_text_en = (
  name: "Swarmer",
  cost: 3,
  type: (
    "Swarm",
    "Creature",
  ),
  capacity: (
    "The first time it enters zone 1, create two Drone tokens in that zone.",
  ),
  behavior: (
    "If in zone 3 or 2, Advance.",
    "If in zone 1, Attack.",
  ),
  flavor: "Their role is to spread the infestation as close as possible to the front line.",
  power: "2",
  toughness: "3",
)

#let make_swarmer(
  language: "en",
) = {
  let swarmer_text = none
  if language == "en" {
    swarmer_text = swarmer_text_en
  } else if language == "fr" {
    swarmer_text = swarmer_text_fr
  } else {
    swarmer_text = swarmer_text_fr // langue par défaut
  }
  
  let swarmer = creat_card(
    swarmer_text.name,
    cost: swarmer_text.cost,
    type: swarmer_text.type,
    capacity: swarmer_text.capacity,
    behavior: swarmer_text.behavior,
    flavor: swarmer_text.flavor,
    power: swarmer_text.power,
    toughness: swarmer_text.toughness,
  )
  
  swarmer
}