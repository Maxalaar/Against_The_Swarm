#import "../../card_structure/creat_card.typ": creat_card

#let broodling_text_fr = (
  name: "Essaimé",
  type: (
    "Essaim",
    "Créature",
    "Jeton",
  ),
  behavior: (
    "Si en zone 3 ou 2 Avance.",
    "Si en zone 1 Attaque.",
  ),
  flavor: "Générés en masse, ils forment la chair sacrifiable de toute force d’invasion.",
)

#let broodling_text_en = (
  name: "Broodling",
  type: (
    "Swarm",
    "Creature",
    "Token",
  ),
  behavior: (
    "If in zone 3 or 2, Advance.",
    "If in zone 1, Attack.",
  ),
  flavor: "Mass-produced, they form the expendable bulk of any invasion force.",
)

#let make_broodling(
  language: "en",
) = {
  let broodling_text = none
  if language == "en" {
    broodling_text = broodling_text_en
  } else if language == "fr" {
    broodling_text = broodling_text_fr
  } else {
    broodling_text = broodling_text_en
  }
  
  let broodling = creat_card(
    broodling_text.name,
    type: broodling_text.type,
    behavior: broodling_text.behavior,
    flavor: broodling_text.flavor,
    power: "1",
    toughness: "1",
  )
  
  broodling
}