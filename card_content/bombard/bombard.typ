#import "../../card_structure/creat_card.typ": creat_card

#let bombard_text_fr = (
  name: "Bombarde",
  type: (
    "Essaim",
    "Créature",
  ),
  behavior: (
    "S'il est en zone 1 ou 2, Recule.",
    "S'il est en zone 3, Attaque.",
  ),
  flavor: "Lance à longue portée des jets corrosifs qui consument chair et acier. ",
)

#let bombard_text_en = (
  name: "Bombard",
  type: (
    "Swarm",
    "Creature",
  ),
  behavior: (
    "If in zone 1 or 2, Retreat.",
    "If in zone 3, Attack.",
  ),
  flavor: "Launches long-range corrosive jets that consume flesh and steel.",
)

#let make_bombard(
  language: "en",
) = {
  let bombard_text = none
  if language == "en" {
    bombard_text = bombard_text_en
  } else if language == "fr" {
    bombard_text = bombard_text_fr
  } else {
    bombard_text = bombard_text_en
  }
  
  let bombard = creat_card(
    bombard_text.name,
    cost: 3,
    type: bombard_text.type,
    behavior: bombard_text.behavior,
    flavor: bombard_text.flavor,
    power: 3,
    toughness: 3,
  )
  
  bombard
}