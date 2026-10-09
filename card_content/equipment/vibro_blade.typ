#import "../../card_structure/equipment_card.typ": equipment_card

#let vibro_blade = equipment_card(
  "Lame vibrante",
  kind: "Atout, Matériel",
  slots: 1,
  dice: (),
  effect: [Au début de votre tour, lancez 1~dé de plus. Il ne peut servir qu'à payer vos Armes de Mêlée.],
  flavor: [Elle chante quand elle coupe.],
)
