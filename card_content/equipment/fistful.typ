#import "../../card_structure/equipment_card.typ": equipment_card

#let fistful = equipment_card(
  "Poignée de dés",
  kind: "Atout, Matériel",
  slots: 2,
  dice: (),
  effect: [Au début de votre tour, lancez 2~dés de plus, puis défaussez tous vos dés qui affichent 4 ou plus.],
  flavor: [Pas besoin de viser quand on arrose.],
)
