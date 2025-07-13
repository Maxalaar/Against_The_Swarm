#import "../../card_structure/creat_card.typ": creat_card

#let warrior_text_fr = (
  name: "Guerrier",
  type: (
    "Essaim",
    "Créature",
    "Jeton",
  ),
  behavior: (
    "Si en zone 3 ou 2 Avance.",
    "Si en zone 1 Attaque."
  ),
  flavor: "Les guerriers forment l'armature solide d'une force de l'essaim.",
)

#let warrior_text_en = (
  name: "Warrior",
  type: (
    "Swarm",
    "Creature",
    "Token"
  ),
  behavior: (
    "If in zone 3 or 2, Advance.",
    "If in zone 1, Attack."
  ),
  flavor: "The warriors form the solid framework of a swarm force.",
)

#let make_warrior(
  language: "en",
) = {
  let warrior_text = none
  if language == "en" {
    warrior_text = warrior_text_en
  } else if language == "fr" {
    warrior_text = warrior_text_fr
  } else {
    warrior_text = warrior_text_en
  }
  
  let warrior = creat_card(
    warrior_text.name,
    type: warrior_text.type,
    behavior: warrior_text.behavior,
    flavor: warrior_text.flavor,
    power: "3",
    toughness: "3",
  )
  
  warrior
}