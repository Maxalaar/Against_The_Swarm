#import "../../card_structure/creat_card.typ": creat_card

#let protector_text_fr = (
  name: "Protecteur",
  type: (
    "Essaim",
    "Créature",
  ),
  capacity: (
    "Chaque fois qu'une créature dans sa zone subit des dégâts, réduire de 1 les dégâts subis.",
  ),
  behavior: (
    "Si en zone 3 ou 2 Avance.",
    "Si en zone 1 Attaque.",
  ),
  flavor: "Cet organisme projette un bouclier psychique, émanation de la volonté de l’esprit-ruche.",
)

#let protector_text_en = (
  name: "Protector",
  type: (
    "Swarm",
    "Creature",
  ),
  capacity: (
    "Each time a creature in its zone takes damage, reduce the damage taken by 1.",
  ),
  behavior: (
    "If in zone 3 or 2, Advance.",
    "If in zone 1, Attack.",
  ),
  flavor: "This organism projects a psychic shield, an emanation of the hive-mind's will.",
)

#let make_protector(
  language: "en",
) = {
  let protector_text = none
  if language == "en" {
    protector_text = protector_text_en
  } else if language == "fr" {
    protector_text = protector_text_fr
  } else {
    protector_text = protector_text_en
  }
  
  let protector = creat_card(
    protector_text.name,
    cost: 3,
    type: protector_text.type,
    capacity: protector_text.capacity,
    behavior: protector_text.behavior,
    flavor: protector_text.flavor,
    power: 1,
    toughness: 3,
  )
  
  protector
}