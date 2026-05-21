#import "../../card_structure/creat_card.typ": creat_card

#let ram_text_fr = (
  name: "Essaimeur",
  type: (
    "Essaim",
    "Créature",
  ),
  capacity: (
    "La première fois qu'il entre en zone 1, inffligue sont Attaque en Dommage au joueur.",
  ),
  behavior: (
    "Si en zone 3 ou 2 Avance.",
    "Si en zone 1 Attaque.",
  ),
  flavor: "",
)

#let ram_text_en = (
  name: "Swarmer",
  type: (
    "Swarm",
    "Creature",
  ),
  capacity: (
    "",
  ),
  behavior: (
    "",
    "",
  ),
  flavor: "",
)

#let make_ram(
  language: "en",
) = {
  let ram_text = none
  if language == "en" {
    ram_text = ram_text_en
  } else if language == "fr" {
    ram_text = ram_text_fr
  } else {
    ram_text = ram_text_en
  }
  
  let ram = creat_card(
    ram_text.name,
    cost: 2,
    type: ram_text.type,
    capacity: ram_text.capacity,
    behavior: ram_text.behavior,
    flavor: ram_text.flavor,
    power: 2,
    toughness: 3,
  )
  
  ram
}