#import "../../card_structure/equipment_card.typ": equipment_card

#let detector = equipment_card(
  "Détecteur",
  kind: "Atout, Matériel",
  charge: 1,
  dice: (),
  effect: [Au début de votre tour, lancez 1~dé de plus. Il ne peut servir qu'à payer le coût d'une Emprise.],
  flavor: [Il bipe tout le temps. C'est bon signe.],
)
