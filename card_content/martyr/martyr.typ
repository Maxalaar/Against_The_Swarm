#import "../../card_structure/creat_card.typ": creat_card

#let martyr_text_fr = (
  name: "Martyre",
  type: (
    "Essaim",
    "Créature",
  ),
  capacity: (
    "S'il meurt en zone 1, inflige 2 dégâts.",
  ),
  behavior: (
    "Si en zone 3 ou 2 Avance.",
    "Si en zone 1 Attaque."
  ),
  flavor: "Qu’importe qu’un corps tombe, tant que l’essaim avance.",
)

#let martyr_text_en = (
  name: "Martyr",
  type: (
    "Swarm",
    "Creature",
  ),
  capacity: (
    "If it dies in zone 1, deal 2 damage.",
  ),
  behavior: (
    "If in zone 3 or 2, Advance.",
    "If in zone 1, Attack."
  ),
  flavor: "What does it matter if a body falls, as long as the swarm advances.",
)

#let make_martyr(
  language: "en",
) = {
  let martyr_text = none
  if language == "en" {
    martyr_text = martyr_text_en
  } else if language == "fr" {
    martyr_text = martyr_text_fr
  } else {
    martyr_text = martyr_text_en
  }
  
  let martyr = creat_card(
    martyr_text.name,
    cost: 2,
    type: martyr_text.type,
    capacity: martyr_text.capacity,
    behavior: martyr_text.behavior,
    flavor: martyr_text.flavor,
    power: "2",
    toughness: "2",
  )
  
  martyr
}