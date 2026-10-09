#import "../../card_structure/equipment_card.typ": equipment_card

#let capacitor = equipment_card(
  "Condensateur",
  kind: "Atout, Matériel",
  charge: 2,
  dice: (),
  effect: [Au début de votre tour, lancez 2~dés de plus. Ils ne peuvent servir qu'à payer vos Armes à Énergie.],
  flavor: [Ne touchez pas les bornes.],
)
