#import "../../card_structure/creat_card.typ": creat_card

#let spitter_text_fr = (
  name: "Cracheur",
  type: (
    "Essaim",
    "Créature",
    "Jeton",
  ),
  behavior: (
    "Si en zone 3 Avance.",
    "Si en zone 2 Attaque.",
    "Si en zone 1 Recule.",
  ),
  flavor: "Possède un jet corrosif à courte portée lui permettant de harceler les positions ennemies.",
)

#let spitter_text_en = (
  name: "Spitter",
  type: (
    "Swarm",
    "Creature",
    "Token",
  ),
  behavior: (
    "If in zone 3, Advance.",
    "If in zone 2, Attack.",
    "If in zone 1, Retreat.",
  ),
  flavor: "Has a short-range corrosive jet allowing it to harass enemy positions.",
)

#let make_spitter(
  language: "en",
) = {
  let spitter_text = none
  if language == "en" {
    spitter_text = spitter_text_en
  } else if language == "fr" {
    spitter_text = spitter_text_fr
  } else {
    spitter_text = spitter_text_en
  }
  
  let spitter = creat_card(
    spitter_text.name,
    type: spitter_text.type,
    behavior: spitter_text.behavior,
    flavor: spitter_text.flavor,
    power: "1",
    toughness: "1",
  )
  
  spitter
}